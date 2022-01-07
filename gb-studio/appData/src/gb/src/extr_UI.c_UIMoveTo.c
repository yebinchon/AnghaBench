
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UBYTE ;


 scalar_t__ win_dest_pos_x ;
 scalar_t__ win_dest_pos_y ;
 scalar_t__ win_pos_x ;
 scalar_t__ win_pos_y ;
 scalar_t__ win_speed ;

void UIMoveTo(UBYTE x, UBYTE y, UBYTE speed)
{
  win_dest_pos_x = x;
  win_dest_pos_y = y;
  if (speed == 0)
  {
    win_pos_x = x;
    win_pos_y = y;
  }
  else
  {
    win_speed = speed;
  }
}
