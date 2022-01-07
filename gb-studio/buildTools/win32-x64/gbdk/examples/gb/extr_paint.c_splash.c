
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int BLACK ;
 int FILL ;
 int LTGREY ;
 int PEN ;
 int SHOW_SPRITES ;
 int SOLID ;
 int current_cursor ;
 int cursor_x ;
 int cursor_y ;
 int move_cursor () ;
 int plot (int,int,int ,int ) ;
 int set_cursor () ;
 int wait_vbl_done () ;

void splash()
{
  UBYTE x, y;

  cursor_x = 40;
  cursor_y = 50;
  current_cursor = PEN;
  set_cursor();
  move_cursor();
  SHOW_SPRITES;

  for(; cursor_x < 120; cursor_x++) {
    wait_vbl_done();
    move_cursor();
    plot(cursor_x, cursor_y, BLACK, SOLID);
  }
  for(; cursor_y < 94; cursor_y++) {
    wait_vbl_done();
    move_cursor();
    plot(cursor_x, cursor_y, BLACK, SOLID);
  }
  for(; cursor_x > 40; cursor_x--) {
    wait_vbl_done();
    move_cursor();
    plot(cursor_x, cursor_y, BLACK, SOLID);
  }
  for(; cursor_y > 50; cursor_y--) {
    wait_vbl_done();
    move_cursor();
    plot(cursor_x, cursor_y, BLACK, SOLID);
  }
  cursor_x = 160/2;
  cursor_y = 144/2;
  current_cursor = FILL;
  set_cursor();
  move_cursor();

  for(y = 51; y < 94; y++)
    for(x = 41; x < 120; x++)
      plot(x, y, LTGREY, SOLID);


}
