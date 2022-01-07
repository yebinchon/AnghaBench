
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int BGP_REG ;
 scalar_t__ CGB_TYPE ;
 int OBP0_REG ;
 scalar_t__ _cpu ;
 int * bgp_fade_vals ;
 int custom_bg_pal ;
 int custom_bg_pal_fade_step1 ;
 int custom_bg_pal_fade_step2 ;
 int custom_bg_pal_fade_step3 ;
 int custom_bg_pal_fade_step4 ;
 int custom_spr1_pal ;
 int custom_spr1_pal_fade_step1 ;
 int custom_spr1_pal_fade_step2 ;
 int custom_spr1_pal_fade_step3 ;
 int custom_spr1_pal_fade_step4 ;
 int * obj_fade_vals ;
 int set_bkg_palette (int ,int,int ) ;
 int set_sprite_palette (int ,int,int ) ;

void ApplyPaletteChange(UBYTE index)
{
  {
    OBP0_REG = obj_fade_vals[index];
    BGP_REG = bgp_fade_vals[index];
  }
}
