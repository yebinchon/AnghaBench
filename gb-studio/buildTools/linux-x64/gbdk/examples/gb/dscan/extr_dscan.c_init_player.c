
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DEF_PX ;
 int DEF_PY ;
 int * foreCGB ;
 int move_sprite (int,scalar_t__,int ) ;
 scalar_t__ pf ;
 scalar_t__ px ;
 int set_sprite_attrb (int,int ) ;
 int set_sprite_tile (int,int) ;

void init_player()
{
  pf = 0; px = DEF_PX;
  set_sprite_tile( 0, 0 );
  set_sprite_attrb( 0, foreCGB[0] );
  move_sprite( 0, px, DEF_PY );
  set_sprite_tile( 1, 1 );
  set_sprite_attrb( 1, foreCGB[1] );
  move_sprite( 1, px+8, DEF_PY );
}
