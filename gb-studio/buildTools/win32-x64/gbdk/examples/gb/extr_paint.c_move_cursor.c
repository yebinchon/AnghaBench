
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UBYTE ;
struct TYPE_2__ {int w; int h; scalar_t__ hot_y; scalar_t__ hot_x; } ;


 size_t current_cursor ;
 scalar_t__ cursor_x ;
 scalar_t__ cursor_y ;
 TYPE_1__* cursors ;
 int move_sprite (int,scalar_t__,scalar_t__) ;

void move_cursor()
{
  UBYTE x, y;

  for(x = 0; x < cursors[current_cursor].w; x++)
    for(y = 0; y < cursors[current_cursor].h; y++)
      move_sprite((x<<1)+y,
    cursor_x+8 - cursors[current_cursor].hot_x + (x<<3),
    cursor_y+16 - cursors[current_cursor].hot_y + (y<<3));
}
