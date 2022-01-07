
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 scalar_t__ CGB_TYPE ;
 int DEF_SP ;
 int SHOW_BKG ;
 int SHOW_SPRITES ;
 int SPRITES_8x8 ;
 scalar_t__ _cpu ;
 int bkg ;
 int bkg_c ;
 int bkg_m ;
 int * bkg_p ;
 int fore ;
 int move_sprite (int,int ,int ) ;
 int msg_1up ;
 int msg_lv ;
 int * obj_p ;
 int pw ;
 int set_bkg_attr (int ,int ,int,int,int ) ;
 int set_bkg_data (int ,int,int ) ;
 int set_bkg_palette (int,int,int *) ;
 int set_bkg_tiles (int,int ,int,int,int ) ;
 int set_sprite_data (int ,int,int ) ;
 int set_sprite_palette (int,int,int *) ;
 int set_sprite_tile (int,int ) ;

void init_screen()
{
  UBYTE n;

  if( _cpu==CGB_TYPE ) {

    set_bkg_palette( 0, 1, &bkg_p[0] );
    set_bkg_palette( 1, 1, &bkg_p[4] );
    set_bkg_palette( 2, 1, &bkg_p[8] );
    set_bkg_palette( 3, 1, &bkg_p[12] );
    set_bkg_palette( 4, 1, &bkg_p[16] );
    set_bkg_palette( 5, 1, &bkg_p[20] );
    set_bkg_palette( 6, 1, &bkg_p[24] );
    set_bkg_palette( 7, 1, &bkg_p[28] );
    set_sprite_palette( 0, 1, &obj_p[0] );
    set_sprite_palette( 1, 1, &obj_p[4] );
    set_sprite_palette( 2, 1, &obj_p[8] );
    set_sprite_palette( 3, 1, &obj_p[12] );
    set_sprite_palette( 4, 1, &obj_p[16] );
    set_sprite_palette( 5, 1, &obj_p[20] );
    set_sprite_palette( 6, 1, &obj_p[24] );
    set_sprite_palette( 7, 1, &obj_p[28] );


    set_bkg_attr( 0, 0, 20, 18, bkg_c );
    set_bkg_tiles( 0, 0, 20, 18, bkg_c );
  } else {
    set_bkg_tiles( 0, 0, 20, 18, bkg_m );
  }

  pw = 50;
  set_bkg_data( 0, 96, bkg );
  set_bkg_tiles( 0, 0, 3, 1, msg_1up );
  set_bkg_tiles( 16, 0, 2, 1, msg_lv );
  SHOW_BKG;
  SPRITES_8x8;
  set_sprite_data( 0, 128, fore );
  SHOW_SPRITES;
  for( n=0; n<40; n++ ) {
    set_sprite_tile( n, DEF_SP );
    move_sprite( n, 0, 0 );
  }
}
