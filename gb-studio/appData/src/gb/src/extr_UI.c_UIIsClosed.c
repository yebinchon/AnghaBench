
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 scalar_t__ MENU_CLOSED_Y ;
 scalar_t__ win_dest_pos_y ;
 scalar_t__ win_pos_y ;

UBYTE UIIsClosed()
{
  return win_pos_y == MENU_CLOSED_Y && win_dest_pos_y == MENU_CLOSED_Y;
}
