
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int UBYTE ;


 int set_bkg_tiles (int,int ,int,int,unsigned char*) ;

void show_score( UWORD s )
{
  UWORD m;
  UBYTE i, n, f;
  unsigned char score[6];

  f = 0; m = 10000;
  for( i=0; i<5; i++ ) {
    n = s/m; s = s%m; m = m/10;
    if( (n==0)&&(f==0) ) {
      score[i] = 0x20;
    } else {
      f = 1;
      score[i] = 0x30+n;
    }
  }
  score[5] = 0x30;
  set_bkg_tiles( 4, 0, 6, 1, score );
}
