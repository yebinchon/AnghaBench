
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct emu_sc_info {int dev; } ;


 int EMU_SPCS0 ;
 int EMU_SPCS1 ;
 int EMU_SPCS2 ;
 int EMU_SPCS_CHANNELNUM_LEFT ;
 int EMU_SPCS_CLKACCY_1000PPM ;
 int EMU_SPCS_COPYRIGHT ;
 int EMU_SPCS_EMPHASIS_NONE ;
 int EMU_SPCS_GENERATIONSTATUS ;
 int EMU_SPCS_SAMPLERATE_48 ;
 int EMU_SPCS_SOURCENUM_UNSPEC ;


 int device_printf (int ,char*) ;
 int emu_wrptr (struct emu_sc_info*,int ,int ,int) ;

void
emumix_set_spdif_mode(struct emu_sc_info *sc, int mode)
{
 uint32_t spcs;

 switch (mode) {
 case 128:
  break;
 case 129:
  device_printf(sc->dev, "AC3 mode does not work and disabled\n");
  return;
 default:
  return;
 }

 spcs = EMU_SPCS_CLKACCY_1000PPM | EMU_SPCS_SAMPLERATE_48 |
     EMU_SPCS_CHANNELNUM_LEFT | EMU_SPCS_SOURCENUM_UNSPEC |
     EMU_SPCS_GENERATIONSTATUS | 0x00001200 | 0x00000000 |
     EMU_SPCS_EMPHASIS_NONE | EMU_SPCS_COPYRIGHT;

 mode = 128;

 emu_wrptr(sc, 0, EMU_SPCS0, spcs);
 emu_wrptr(sc, 0, EMU_SPCS1, spcs);
 emu_wrptr(sc, 0, EMU_SPCS2, spcs);
}
