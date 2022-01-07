
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int break_tile ;
 int dialing_break ;
 int set_bkg_tiles (int,int,int,int,int ) ;

void break_button(UBYTE x, UBYTE y)
{
 if(x <= 3 && y <= 3){
  set_bkg_tiles(x * 3 + 1, y * 3 + 5, 3, 3, break_tile);
 }
 if((x == 4 || x == 5) && (y <= 2)){
  set_bkg_tiles(x * 3 + 2, y * 3 + 5, 3, 3, break_tile);
 }
 if((x == 4 || x == 5) && (y == 3)){
  set_bkg_tiles(14, 14, 6, 3, dialing_break);
 }
}
