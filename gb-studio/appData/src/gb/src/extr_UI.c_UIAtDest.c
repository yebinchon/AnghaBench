
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 scalar_t__ win_dest_pos_x ;
 scalar_t__ win_dest_pos_y ;
 scalar_t__ win_pos_x ;
 scalar_t__ win_pos_y ;

UBYTE UIAtDest()
{
  return win_pos_x == win_dest_pos_x && win_pos_y == win_dest_pos_y;
}
