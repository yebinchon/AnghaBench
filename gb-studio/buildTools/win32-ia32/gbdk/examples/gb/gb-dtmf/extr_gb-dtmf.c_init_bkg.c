
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int break_btn ;
 int dtmf_tile ;
 int frame_lcd ;
 int press_btn ;
 int set_bkg_data (int,int,int ) ;
 int set_bkg_tiles (int ,int ,int,int,int ) ;

void init_bkg()
{

 set_bkg_data( 0, 9, frame_lcd);
 set_bkg_data( 9, 9, break_btn);
 set_bkg_data(18, 9, press_btn);

 set_bkg_tiles(0, 0, 20, 18, dtmf_tile);
}
