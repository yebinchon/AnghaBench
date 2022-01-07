
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UBYTE ;


 scalar_t__ DEF_ES0 ;
 scalar_t__ DEF_ES1 ;
 int DEF_SP ;
 size_t MAX_ET ;
 scalar_t__* ef ;
 scalar_t__* ex ;
 scalar_t__* ey ;
 int move_sprite (scalar_t__,scalar_t__,scalar_t__) ;
 int set_sprite_tile (scalar_t__,int ) ;

void init_enemy()
{
  UBYTE i;

  for( i=0; i<MAX_ET; i++ ) {
    ef[i] = 0;
    ex[i] = 0;
    ey[i] = 0;
    set_sprite_tile( i*2+DEF_ES0, DEF_SP );
    set_sprite_tile( i*2+DEF_ES1, DEF_SP );
    move_sprite( i*2+DEF_ES0, ex[i], ey[i] );
    move_sprite( i*2+DEF_ES1, ex[i], ey[i] );
  }
}
