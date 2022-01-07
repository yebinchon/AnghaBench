
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int x; int w; int y; int h; } ;


 TYPE_1__* icons ;
 size_t menu_cursor_pos ;
 int move_sprite (int ,int,int) ;

void move_menu_cursor()
{
  move_sprite(0,
       ((icons[menu_cursor_pos].x+icons[menu_cursor_pos].w)<<3) + 4,
       ((icons[menu_cursor_pos].y+icons[menu_cursor_pos].h)<<3) + 12);
}
