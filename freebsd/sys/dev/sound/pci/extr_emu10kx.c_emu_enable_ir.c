
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct emu_sc_info {int enable_ir; int dev; scalar_t__ is_emu10k1; scalar_t__ is_ca0102; scalar_t__ is_emu10k2; } ;


 int DELAY (int) ;
 int EMU_A_IOCFG ;
 int EMU_A_IOCFG_GPOUT1 ;
 int EMU_A_IOCFG_GPOUT2 ;
 int EMU_HCFG ;
 int EMU_HCFG_GPOUT1 ;
 int EMU_HCFG_GPOUT2 ;
 int device_printf (int ,char*) ;
 int emu_rd_nolock (struct emu_sc_info*,int ,int) ;
 int emu_wr_nolock (struct emu_sc_info*,int ,int,int) ;

void
emu_enable_ir(struct emu_sc_info *sc)
{
 uint32_t iocfg;

 if (sc->is_emu10k2 || sc->is_ca0102) {
  iocfg = emu_rd_nolock(sc, EMU_A_IOCFG, 2);
  emu_wr_nolock(sc, EMU_A_IOCFG, iocfg | EMU_A_IOCFG_GPOUT2, 2);
  DELAY(500);
  emu_wr_nolock(sc, EMU_A_IOCFG, iocfg | EMU_A_IOCFG_GPOUT1 | EMU_A_IOCFG_GPOUT2, 2);
  DELAY(500);
  emu_wr_nolock(sc, EMU_A_IOCFG, iocfg | EMU_A_IOCFG_GPOUT1, 2);
  DELAY(100);
  emu_wr_nolock(sc, EMU_A_IOCFG, iocfg, 2);
  device_printf(sc->dev, "Audigy IR MIDI events enabled.\n");
  sc->enable_ir = 1;
 }
 if (sc->is_emu10k1) {
  iocfg = emu_rd_nolock(sc, EMU_HCFG, 4);
  emu_wr_nolock(sc, EMU_HCFG, iocfg | EMU_HCFG_GPOUT2, 4);
  DELAY(500);
  emu_wr_nolock(sc, EMU_HCFG, iocfg | EMU_HCFG_GPOUT1 | EMU_HCFG_GPOUT2, 4);
  DELAY(100);
  emu_wr_nolock(sc, EMU_HCFG, iocfg, 4);
  device_printf(sc->dev, "SB Live! IR MIDI events enabled.\n");
  sc->enable_ir = 1;
 }
}
