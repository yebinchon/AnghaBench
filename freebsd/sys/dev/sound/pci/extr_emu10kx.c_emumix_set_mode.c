
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct emu_sc_info {int rev; int mode; int * mute_gpr; scalar_t__ is_ca0108; scalar_t__ is_ca0102; scalar_t__ is_emu10k2; int dev; scalar_t__ broken_digital; scalar_t__ is_emu10k1; } ;


 size_t ANALOGMUTE ;
 int EMU_A_IOCFG ;
 int EMU_A_IOCFG_DISABLE_ANALOG ;
 int EMU_A_IOCFG_GPOUT1 ;
 int EMU_HCFG ;
 int EMU_HCFG_AUDIOENABLE ;
 int EMU_HCFG_AUTOMUTE ;
 int EMU_HCFG_CODECFMT_I2S ;
 int EMU_HCFG_GPOUT0 ;
 int EMU_HCFG_JOYENABLE ;
 int EMU_HCFG_LOCKTANKCACHE_MASK ;


 int SPDIF_MODE_PCM ;
 int device_printf (int ,char*) ;
 int emu_rd (struct emu_sc_info*,int ,int) ;
 int emu_wr (struct emu_sc_info*,int ,int,int) ;
 int emumix_set_gpr (struct emu_sc_info*,int ,int) ;
 int emumix_set_spdif_mode (struct emu_sc_info*,int ) ;

void
emumix_set_mode(struct emu_sc_info *sc, int mode)
{
 uint32_t a_iocfg;
 uint32_t hcfg;
 uint32_t tmp;

 switch (mode) {
 case 128:

 case 129:
  break;
 default:
  return;
 }

 hcfg = EMU_HCFG_AUDIOENABLE | EMU_HCFG_AUTOMUTE;
 a_iocfg = 0;

 if (sc->rev >= 6)
  hcfg |= EMU_HCFG_JOYENABLE;

 if (sc->is_emu10k1)
  hcfg |= EMU_HCFG_LOCKTANKCACHE_MASK;
 else
  hcfg |= EMU_HCFG_CODECFMT_I2S | EMU_HCFG_JOYENABLE;


 if (mode == 128) {
  if (sc->broken_digital) {
   device_printf(sc->dev, "Digital mode is reported as broken on this card.\n");
  }
  a_iocfg |= EMU_A_IOCFG_GPOUT1;
  hcfg |= EMU_HCFG_GPOUT0;
 }

 if (mode == 129)
  emumix_set_spdif_mode(sc, SPDIF_MODE_PCM);

 if (sc->is_emu10k2)
  a_iocfg |= 0x80;

 if ((sc->is_ca0102) || (sc->is_ca0108))






  a_iocfg |= EMU_A_IOCFG_DISABLE_ANALOG;

 if (sc->is_ca0108)
  a_iocfg |= 0x20;


 if (mode == 128)
  emumix_set_gpr(sc, sc->mute_gpr[ANALOGMUTE], 1);

 emu_wr(sc, EMU_HCFG, hcfg, 4);

 if ((sc->is_emu10k2) || (sc->is_ca0102) || (sc->is_ca0108)) {
  tmp = emu_rd(sc, EMU_A_IOCFG, 2);
  tmp = a_iocfg;
  emu_wr(sc, EMU_A_IOCFG, tmp, 2);
 }



 if (mode == 129)
  emumix_set_gpr(sc, sc->mute_gpr[ANALOGMUTE], 0);

 sc->mode = mode;
}
