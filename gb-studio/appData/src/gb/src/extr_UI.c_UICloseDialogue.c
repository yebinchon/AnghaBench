
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* FALSE ;
 int MENU_CLOSED_Y ;
 int MENU_LAYOUT_INITIAL_X ;
 int UIMoveTo (int ,int ,int ) ;
 void* avatar_enabled ;
 void* menu_enabled ;
 scalar_t__ menu_layout ;
 scalar_t__ text_count ;
 char* text_lines ;
 int text_num_lines ;
 int text_out_speed ;
 scalar_t__ text_tile_count ;

void UICloseDialogue()
{
  UIMoveTo(menu_layout ? MENU_LAYOUT_INITIAL_X : 0, MENU_CLOSED_Y, text_out_speed);


  text_count = 0;
  text_lines[0] = '\0';
  text_tile_count = 0;
  text_num_lines = 3;
  menu_enabled = FALSE;
  menu_layout = 0;
  avatar_enabled = FALSE;
}
