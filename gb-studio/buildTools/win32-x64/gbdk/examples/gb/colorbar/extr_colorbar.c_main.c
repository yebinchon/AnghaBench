
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPLAY_ON ;
 int SHOW_BKG ;
 int VBK_REG ;
 int bar_a ;
 int bar_c ;
 int bar_m ;
 int bar_mHeight ;
 int bar_mWidth ;
 int * bar_p ;
 int enable_interrupts () ;
 int set_bkg_data (int,int,int ) ;
 int set_bkg_palette (int,int,int *) ;
 int set_bkg_tiles (int ,int ,int ,int ,int ) ;

int main(void)
{

  set_bkg_palette( 7, 1, &bar_p[0] );
  set_bkg_palette( 6, 1, &bar_p[4] );
  set_bkg_palette( 5, 1, &bar_p[8] );
  set_bkg_palette( 4, 1, &bar_p[12] );
  set_bkg_palette( 3, 1, &bar_p[16] );
  set_bkg_palette( 2, 1, &bar_p[20] );
  set_bkg_palette( 1, 1, &bar_p[24] );
  set_bkg_palette( 0, 1, &bar_p[28] );


  set_bkg_data( 0x0, 32, bar_c );


  VBK_REG = 1;

  set_bkg_tiles( 0, 0, bar_mWidth, bar_mHeight, bar_a );


  VBK_REG = 0;

  set_bkg_tiles( 0, 0, bar_mWidth, bar_mHeight, bar_m );

  SHOW_BKG;
  enable_interrupts();
  DISPLAY_ON;

  return 0;
}
