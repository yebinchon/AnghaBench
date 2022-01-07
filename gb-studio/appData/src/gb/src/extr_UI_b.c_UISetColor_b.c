
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UBYTE ;


 int set_bkg_data (int,int,int ) ;
 int set_win_tiles (int ,int ,int,int,int ) ;
 int ui_black ;
 int * ui_colors ;
 int ui_white ;

void UISetColor_b(UBYTE color)
{


  set_bkg_data(0xC9, 1, ui_white);
  set_bkg_data(0xCA, 1, ui_black);
  set_win_tiles(0, 0, 20, 18, ui_colors[color]);
}
