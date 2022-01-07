
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLACK ;
 int OBP1_REG ;
 int PEN ;
 int SOLID ;
 int current_color ;
 int current_cursor ;
 int current_mode ;
 scalar_t__ current_tool ;
 int cursor_x ;
 int cursor_y ;
 scalar_t__ menu_cursor_pos ;
 int run () ;
 int splash () ;

void main()
{

  OBP1_REG = 0xE0U;

  splash();

  current_tool = 0;
  current_color = BLACK;
  current_mode = SOLID;
  current_cursor = PEN;
  menu_cursor_pos = 0;
  cursor_x = 160/2;
  cursor_y = 144/2;

  run();
}
