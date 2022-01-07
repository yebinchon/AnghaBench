
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UBYTE ;


 int move_sprite (int,scalar_t__,scalar_t__) ;

void move_cursor(UBYTE x, UBYTE y)
{
 move_sprite(23, x, y);
 move_sprite(24, x, y+8);
 move_sprite(25, x+8, y);
 move_sprite(26, x+8, y+8);
}
