
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int menu_index ;
 int menu_num_options ;
 int set_win_tiles (int,int,int,int,int ) ;
 int text_num_lines ;
 int ui_bg_tiles ;
 int ui_cursor_tiles ;

void UIDrawMenuCursor()
{
  UBYTE i;
  for (i = 0; i < menu_num_options; i++)
  {
    set_win_tiles(i >= text_num_lines ? 10 : 1, (i % text_num_lines) + 1, 1, 1, menu_index == i ? ui_cursor_tiles : ui_bg_tiles);
  }
}
