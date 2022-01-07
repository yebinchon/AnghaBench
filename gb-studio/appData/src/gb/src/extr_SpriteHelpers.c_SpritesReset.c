
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int move_sprite (int,int ,int ) ;
 int set_sprite_prop (int,int ) ;

void SpritesReset()
{
  UBYTE i;

  for (i = 0; i != 40; i++) {
    move_sprite(i, 0, 0);
    set_sprite_prop(i, 0);
  }
}
