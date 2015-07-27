private int buttonSize, bcolor, tcolor;
private String mode;
Button START, HELP;


void setup() {
  size(800, 800);
  background(#6A5A5A);
  buttonSize=50;
  START=new Button(width/4 - 60, 3*height/4 - 60, 2*buttonSize, 2*buttonSize, 20, "START");
  HELP=new Button(3*width/4 - 60, 3*height/4 - 60, 2*buttonSize, 2*buttonSize, 20, "HELP");
  bcolor=245;
  tcolor=10;
}

void draw() {
  processButtons();
  background(#6A5A5A);
  fill(#F4F519);
  START.display(bcolor, tcolor);
  HELP.display(bcolor, tcolor);
}


void processButtons() {
  processHovers();
  if (START.clicked()) {
    mode="start";
  } else if (HELP.clicked()) {
    mode="help";
  }
}

void processHovers() {
  if (START.inRange()) {

    START.setHover(true);
    START.setHighlight(#1CFF00);
  } else if (HELP.inRange()) {
    HELP.setHover(true);
    HELP.setHighlight(#0035FF);
  }
  if (!START.inRange()) {
    START.setHover(false);
  }
  if (!HELP.inRange()) {
    HELP.setHover(false);
  }
}

