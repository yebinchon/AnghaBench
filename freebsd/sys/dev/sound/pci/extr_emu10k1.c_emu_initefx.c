
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {scalar_t__ APS; } ;


 int C_00000000 ;
 int C_00000001 ;
 int C_00000004 ;
 int C_40000000 ;
 scalar_t__ EMU_DBG ;
 scalar_t__ EMU_FXGPREGBASE ;
 int EXTIN (int ) ;
 int EXTIN_AC97_L ;
 int EXTIN_AC97_R ;
 int EXTIN_SPDIF_CD_L ;
 int EXTIN_SPDIF_CD_R ;
 int EXTIN_TOSLINK_L ;
 int EXTIN_TOSLINK_R ;
 int EXTOUT (int ) ;
 int EXTOUT_AC97_CENTER ;
 int EXTOUT_AC97_L ;
 int EXTOUT_AC97_LFE ;
 int EXTOUT_AC97_R ;
 int EXTOUT_ACENTER ;
 int EXTOUT_ADC_CAP_L ;
 int EXTOUT_ADC_CAP_R ;
 int EXTOUT_ALFE ;
 int EXTOUT_HEADPHONE_L ;
 int EXTOUT_HEADPHONE_R ;
 int EXTOUT_REAR_L ;
 int EXTOUT_REAR_R ;
 int EXTOUT_TOSLINK_L ;
 int EXTOUT_TOSLINK_R ;
 int FXBUS (int ) ;
 int FXBUS_PCM_LEFT ;
 int FXBUS_PCM_RIGHT ;
 int GPR (int) ;
 int emu_addefxop (struct sc_info*,int ,int ,int ,int ,int ,int*) ;
 int emu_wrefx (struct sc_info*,int,int) ;
 int emu_wrptr (struct sc_info*,int ,scalar_t__,int ) ;
 int iACC3 ;
 int iINTERP ;
 int iMAC0 ;
 int iMACINT0 ;

__attribute__((used)) static void
emu_initefx(struct sc_info *sc)
{
 int i;
 u_int32_t pc = 16;


 for (i = 0; i < 512; i++) {
  emu_wrefx(sc, i * 2, 0x10040);
  emu_wrefx(sc, i * 2 + 1, 0x610040);
 }

 for (i = 0; i < 256; i++)
  emu_wrptr(sc, 0, EMU_FXGPREGBASE + i, 0);
 emu_addefxop(sc, iMACINT0, GPR(0), EXTIN(EXTIN_SPDIF_CD_L),
   FXBUS(FXBUS_PCM_LEFT), C_00000004, &pc);
 emu_addefxop(sc, iMACINT0, GPR(1), EXTIN(EXTIN_SPDIF_CD_R),
   FXBUS(FXBUS_PCM_RIGHT), C_00000004, &pc);


 emu_addefxop(sc, iACC3, GPR(0), GPR(0), C_00000000,
   sc->APS ? EXTIN(EXTIN_TOSLINK_L) : C_00000000, &pc);
 emu_addefxop(sc, iACC3, GPR(1), GPR(1), C_00000000,
   sc->APS ? EXTIN(EXTIN_TOSLINK_R) : C_00000000, &pc);


 emu_addefxop(sc, iACC3, EXTOUT(EXTOUT_AC97_L), C_00000000,
   C_00000000, GPR(0), &pc);
 emu_addefxop(sc, iACC3, EXTOUT(EXTOUT_AC97_R), C_00000000,
   C_00000001, GPR(1), &pc);


 emu_addefxop(sc, iINTERP, GPR(2), GPR(1), C_40000000, GPR(0), &pc);
 emu_addefxop(sc, iACC3, EXTOUT(EXTOUT_REAR_L), C_00000000,
   C_00000000, GPR(0), &pc);
 emu_addefxop(sc, iACC3, EXTOUT(EXTOUT_REAR_R), C_00000000,
   C_00000000, GPR(1), &pc);



 emu_addefxop(sc, iACC3, EXTOUT(EXTOUT_TOSLINK_L), C_00000000,
   C_00000000, GPR(0), &pc);
 emu_addefxop(sc, iACC3, EXTOUT(EXTOUT_TOSLINK_R), C_00000000,
   C_00000000, GPR(1), &pc);



 emu_addefxop(sc, iACC3, EXTOUT(EXTOUT_ACENTER), C_00000000,
   GPR(0), GPR(2), &pc);

 emu_addefxop(sc, iACC3, EXTOUT(EXTOUT_ALFE), C_00000000,
   GPR(1), GPR(2), &pc);

 emu_addefxop(sc, iACC3, EXTOUT(EXTOUT_AC97_CENTER), C_00000000,
   GPR(0), GPR(2), &pc);

 emu_addefxop(sc, iACC3, EXTOUT(EXTOUT_AC97_LFE), C_00000000,
   GPR(1), GPR(2), &pc);


 emu_addefxop(sc, iACC3, EXTOUT(EXTOUT_HEADPHONE_L), C_00000000,
   C_00000000, GPR(0), &pc);
 emu_addefxop(sc, iACC3, EXTOUT(EXTOUT_HEADPHONE_R), C_00000000,
   C_00000000, GPR(1), &pc);


 emu_addefxop(sc, iACC3, EXTOUT(EXTOUT_ADC_CAP_L), C_00000000,
   C_00000000, EXTIN(EXTIN_AC97_L), &pc);
 emu_addefxop(sc, iACC3, EXTOUT(EXTOUT_ADC_CAP_R), C_00000000,
   C_00000000, EXTIN(EXTIN_AC97_R), &pc);


 emu_wrptr(sc, 0, EMU_DBG, 0);
}
