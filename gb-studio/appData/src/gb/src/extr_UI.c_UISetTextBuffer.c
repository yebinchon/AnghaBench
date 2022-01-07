
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int UIDrawFrame (int ,int,int,int) ;
 int strcpy (int ,unsigned char*) ;
 scalar_t__ text_count ;
 int text_drawn ;
 int text_lines ;
 scalar_t__ text_tile_count ;
 scalar_t__ text_x ;
 scalar_t__ text_y ;

void UISetTextBuffer(unsigned char *text)
{
  UIDrawFrame(0, 2, 20, 4);
  text_drawn = FALSE;
  strcpy(text_lines, text);
  text_x = 0;
  text_y = 0;
  text_count = 0;
  text_tile_count = 0;
}
