
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UBYTE ;


 scalar_t__ DEF_KS ;
 int DEF_KX ;
 int DEF_KY ;
 int DEF_SP ;
 size_t MAX_KT ;
 scalar_t__* kf ;
 int * kx ;
 int * ky ;
 int move_sprite (scalar_t__,int ,int ) ;
 int set_sprite_tile (scalar_t__,int ) ;

void init_kirai()
{
  UBYTE i;

  for( i=0; i<MAX_KT; i++ ) {
    kf[i] = 0;
    kx[i] = DEF_KX;
    ky[i] = DEF_KY;
    set_sprite_tile( i+DEF_KS, DEF_SP );
    move_sprite( i+DEF_KS, kx[i], ky[i] );
  }
}
