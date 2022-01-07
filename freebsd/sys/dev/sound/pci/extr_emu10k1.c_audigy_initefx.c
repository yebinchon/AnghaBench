
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dummy; } ;


 int A_C_00000000 ;
 int A_C_40000000 ;
 int A_EXTIN (int ) ;
 int A_EXTIN_AC97_L ;
 int A_EXTIN_AC97_R ;
 int A_EXTOUT (int ) ;
 int A_EXTOUT_AC97_L ;
 int A_EXTOUT_AC97_R ;
 int A_EXTOUT_ACENTER ;
 int A_EXTOUT_ADC_CAP_L ;
 int A_EXTOUT_ADC_CAP_R ;
 int A_EXTOUT_AFRONT_L ;
 int A_EXTOUT_AFRONT_R ;
 int A_EXTOUT_ALFE ;
 int A_EXTOUT_AREAR_L ;
 int A_EXTOUT_AREAR_R ;
 int A_EXTOUT_CENTER ;
 int A_EXTOUT_FRONT_L ;
 int A_EXTOUT_FRONT_R ;
 int A_EXTOUT_HEADPHONE_L ;
 int A_EXTOUT_HEADPHONE_R ;
 int A_EXTOUT_LFE ;
 int A_EXTOUT_REAR_L ;
 int A_EXTOUT_REAR_R ;
 int A_FXBUS (int ) ;
 int A_GPR (int) ;
 scalar_t__ EMU_A_DBG ;
 int EMU_A_DBG_SINGLE_STEP ;
 scalar_t__ EMU_A_FXGPREGBASE ;
 int EXTIN_COAX_SPDIF_L ;
 int EXTIN_COAX_SPDIF_R ;
 int FXBUS_PCM_LEFT ;
 int FXBUS_PCM_RIGHT ;
 int audigy_addefxop (struct sc_info*,int,int,int,int,int,int*) ;
 int emu_wrptr (struct sc_info*,int ,scalar_t__,int) ;
 int iACC3 ;
 int iINTERP ;
 int iMAC0 ;

__attribute__((used)) static void
audigy_initefx(struct sc_info *sc)
{
 int i;
 u_int32_t pc = 0;


 for (i = 0; i < 512; i++)
  audigy_addefxop(sc, 0x0f, 0x0c0, 0x0c0, 0x0cf, 0x0c0, &pc);

 for (i = 0; i < 512; i++)
  emu_wrptr(sc, 0, EMU_A_FXGPREGBASE + i, 0x0);

 pc = 16;


 emu_wrptr(sc, 0, EMU_A_DBG, EMU_A_DBG_SINGLE_STEP);
 audigy_addefxop(sc, iACC3, A_EXTOUT(A_EXTOUT_AC97_L), A_C_00000000,
   A_C_00000000, A_FXBUS(FXBUS_PCM_LEFT), &pc);
 audigy_addefxop(sc, iACC3, A_EXTOUT(A_EXTOUT_AC97_R), A_C_00000000,
   A_C_00000000, A_FXBUS(FXBUS_PCM_RIGHT), &pc);


 audigy_addefxop(sc, iACC3, A_GPR(0), A_C_00000000,
   A_C_00000000, A_EXTIN(EXTIN_COAX_SPDIF_L), &pc);
 audigy_addefxop(sc, iACC3, A_GPR(1), A_C_00000000,
   A_C_00000000, A_EXTIN(EXTIN_COAX_SPDIF_R), &pc);


 audigy_addefxop(sc, iINTERP, A_GPR(2), A_GPR(1),
   A_C_40000000, A_GPR(0), &pc);


 audigy_addefxop(sc, iACC3, A_EXTOUT(A_EXTOUT_HEADPHONE_L),
   A_C_00000000, A_C_00000000, A_GPR(0), &pc);
 audigy_addefxop(sc, iACC3, A_EXTOUT(A_EXTOUT_HEADPHONE_R),
   A_C_00000000, A_C_00000000, A_GPR(1), &pc);


 audigy_addefxop(sc, iACC3, A_EXTOUT(A_EXTOUT_AFRONT_L), A_C_00000000,
   A_C_00000000, A_GPR(0), &pc);
 audigy_addefxop(sc, iACC3, A_EXTOUT(A_EXTOUT_AFRONT_R), A_C_00000000,
   A_C_00000000, A_GPR(1), &pc);


 audigy_addefxop(sc, iACC3, A_EXTOUT(A_EXTOUT_FRONT_L), A_C_00000000,
   A_C_00000000, A_GPR(0), &pc);
 audigy_addefxop(sc, iACC3, A_EXTOUT(A_EXTOUT_FRONT_R), A_C_00000000,
   A_C_00000000, A_GPR(1), &pc);



 audigy_addefxop(sc, iACC3, A_EXTOUT(A_EXTOUT_ACENTER), A_C_00000000,
   A_GPR(0), A_GPR(2), &pc);

 audigy_addefxop(sc, iACC3, A_EXTOUT(A_EXTOUT_ALFE), A_C_00000000,
   A_GPR(1), A_GPR(2), &pc);


 audigy_addefxop(sc, iACC3, A_EXTOUT(A_EXTOUT_CENTER), A_C_00000000,
   A_GPR(0), A_GPR(2), &pc);

 audigy_addefxop(sc, iACC3, A_EXTOUT(A_EXTOUT_LFE), A_C_00000000,
   A_GPR(1), A_GPR(2), &pc);
 audigy_addefxop(sc, iACC3, A_EXTOUT(A_EXTOUT_AREAR_L), A_C_00000000,
   A_C_00000000, A_GPR(0), &pc);
 audigy_addefxop(sc, iACC3, A_EXTOUT(A_EXTOUT_AREAR_R), A_C_00000000,
   A_C_00000000, A_GPR(1), &pc);


 audigy_addefxop(sc, iACC3, A_EXTOUT(A_EXTOUT_REAR_L), A_C_00000000,
   A_C_00000000, A_GPR(0), &pc);
 audigy_addefxop(sc, iACC3, A_EXTOUT(A_EXTOUT_REAR_R), A_C_00000000,
   A_C_00000000, A_GPR(1), &pc);



 audigy_addefxop(sc, iACC3, A_EXTOUT(A_EXTOUT_ADC_CAP_L), A_C_00000000,
   A_C_00000000, A_EXTIN(A_EXTIN_AC97_L), &pc);
 audigy_addefxop(sc, iACC3, A_EXTOUT(A_EXTOUT_ADC_CAP_R), A_C_00000000,
   A_C_00000000, A_EXTIN(A_EXTIN_AC97_R), &pc);


 emu_wrptr(sc, 0, EMU_A_DBG, 0);
}
