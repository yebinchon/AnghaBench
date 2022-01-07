
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UBYTE ;


 int DEF_KC ;
 scalar_t__ DEF_KS ;
 int DEF_KX ;
 scalar_t__ DEF_KY ;
 size_t MAX_KT ;
 scalar_t__ MIN_KY ;
 int * foreCGB ;
 int* kf ;
 int* kx ;
 scalar_t__* ky ;
 int move_sprite (scalar_t__,int,scalar_t__) ;
 int pf ;
 int px ;
 int set_sprite_attrb (scalar_t__,int ) ;
 int set_sprite_tile (scalar_t__,int) ;

void kirai()
{
  UBYTE i;

  for( i=0; i<MAX_KT; i++ ) {
    if( kf[i] != 0 ) {
      ky[i]--;
      if( kf[i] >=3 ) {
        kf[i]++;
        if( (kx[i]>(px-5))&&(kx[i]<(px+12)) ) {
          if( pf < 2 ) {

            pf = 2;
          }
        }
        if( kf[i] >= 6 ) {
          kf[i] = 0; kx[i] = DEF_KX; ky[i] = DEF_KY;
        }
      } else if( ky[i] <= MIN_KY ) {
        kf[i] = 3;
      } else {
        kf[i] = 3-kf[i];
      }
      set_sprite_tile( i+DEF_KS, kf[i]+DEF_KC );
      set_sprite_attrb( i+DEF_KS, foreCGB[kf[i]+DEF_KC] );
      move_sprite( i+DEF_KS, kx[i], ky[i] );
    }
  }
}
