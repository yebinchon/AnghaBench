
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCD_HIGHT ;
 int LCD_WIDTH ;
 int LCD_X ;
 int LCD_Y ;
 int OFFSET ;
 int dtmf_lcd ;
 int init_disp ;
 int set_bkg_data (int ,int,int ) ;
 int set_bkg_tiles (int ,int ,int ,int ,int ) ;

void clr_disp()
{
 set_bkg_data(OFFSET, 50, dtmf_lcd);
 set_bkg_tiles(LCD_X, LCD_Y, LCD_WIDTH, LCD_HIGHT, init_disp);
}
