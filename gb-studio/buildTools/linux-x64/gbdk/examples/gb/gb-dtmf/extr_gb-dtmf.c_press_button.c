
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int dialing_press ;
 int press_tile ;
 int set_bkg_tiles (int,int,int,int,int ) ;

void press_button(UBYTE x, UBYTE y)
{
 if(x <= 3 && y <= 3){
  set_bkg_tiles(x * 3 + 1, y * 3 + 5, 3, 3, press_tile);
 }
 if((x == 4 || x == 5) && (y <= 2)){
  set_bkg_tiles(x * 3 + 2, y * 3 + 5, 3, 3, press_tile);
 }
 if((x == 4 || x == 5) && (y == 3)){
  set_bkg_tiles(14, 14, 6, 3, dialing_press);
 }
}
