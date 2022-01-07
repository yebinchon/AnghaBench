
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct emu_sc_info {unsigned int code_size; scalar_t__ dbg_level; scalar_t__ is_emu10k1; scalar_t__ routing_code_end; void* dummy_gpr; int rm; scalar_t__ mch_rec; void** cache_gpr; scalar_t__ has_51; scalar_t__ has_71; int mch_disabled; void** mute_gpr; } ;


 int ACC3 ;
 int ANALOGMUTE ;
 unsigned int A_IN_AC97_L ;
 unsigned int A_IN_AC97_R ;
 unsigned int A_IN_AUX2_L ;
 unsigned int A_IN_AUX2_R ;
 unsigned int A_IN_LINE2_L ;
 unsigned int A_IN_LINE2_R ;
 unsigned int A_IN_O_SPDIF_L ;
 unsigned int A_IN_O_SPDIF_R ;
 unsigned int A_IN_R_SPDIF_L ;
 unsigned int A_IN_R_SPDIF_R ;
 unsigned int A_IN_SPDIF_CD_L ;
 unsigned int A_IN_SPDIF_CD_R ;
 int A_OUT_ADC_REC_L ;
 int A_OUT_ADC_REC_R ;
 int A_OUT_A_CENTER ;
 int A_OUT_A_FRONT_L ;
 int A_OUT_A_FRONT_R ;
 int A_OUT_A_REAR_L ;
 int A_OUT_A_REAR_R ;
 int A_OUT_A_SIDE_L ;
 int A_OUT_A_SIDE_R ;
 int A_OUT_A_SUB ;
 int A_OUT_D_CENTER ;
 int A_OUT_D_FRONT_L ;
 int A_OUT_D_FRONT_R ;
 int A_OUT_D_REAR_L ;
 int A_OUT_D_REAR_R ;
 int A_OUT_D_SIDE_L ;
 int A_OUT_D_SIDE_R ;
 int A_OUT_D_SUB ;
 int A_OUT_HPHONE_L ;
 int A_OUT_HPHONE_R ;
 int CDSPDIFMUTE ;
 size_t C_CENTER ;
 size_t C_FRONT_L ;
 size_t C_FRONT_R ;
 size_t C_REAR_L ;
 size_t C_REAR_R ;
 size_t C_REC_L ;
 size_t C_REC_R ;
 size_t C_SIDE_L ;
 size_t C_SIDE_R ;
 size_t C_SUB ;
 int DSP_CONST (int) ;
 int EFX_CACHE (size_t) ;
 int EFX_COPY (int ,int ) ;
 int EFX_OUTPUT (char*,size_t,int ,int ,int) ;
 int EFX_OUTPUTD (size_t,int ,int ) ;
 int EFX_ROUTE (char*,int ,int ,size_t,int) ;
 int EFX_SKIP (int,int ) ;
 int EMU_A_DBG ;
 int EMU_A_DBG_SINGLE_STEP ;
 int EMU_DBG ;
 int EMU_DBG_SINGLE_STEP ;
 int FX (unsigned int) ;
 int FX2 (int) ;
 int GPR (void*) ;
 int INP (unsigned int) ;
 unsigned int IN_AC97_L ;
 unsigned int IN_AC97_R ;
 unsigned int IN_COAX_SPDIF_L ;
 unsigned int IN_COAX_SPDIF_R ;
 unsigned int IN_LINE1_L ;
 unsigned int IN_LINE1_R ;
 unsigned int IN_LINE2_L ;
 unsigned int IN_LINE2_R ;
 unsigned int IN_SPDIF_CD_L ;
 unsigned int IN_SPDIF_CD_R ;
 unsigned int IN_TOSLINK_L ;
 unsigned int IN_TOSLINK_R ;
 unsigned int IN_ZOOM_L ;
 unsigned int IN_ZOOM_R ;
 int MACS ;
 int M_FX0_FRONT_L ;
 int M_FX0_REC_L ;
 int M_FX1_FRONT_R ;
 int M_FX1_REC_R ;
 int M_FX2_REAR_L ;
 int M_FX3_REAR_R ;
 int M_FX4_CENTER ;
 int M_FX5_SUBWOOFER ;
 int M_FX6_SIDE_L ;
 int M_FX7_SIDE_R ;
 int M_IN0_FRONT_L ;
 int M_IN0_FRONT_R ;
 int M_IN0_REC_L ;
 int M_IN0_REC_R ;
 int M_IN1_FRONT_L ;
 int M_IN1_FRONT_R ;
 int M_IN1_REC_L ;
 int M_IN1_REC_R ;
 int M_IN2_FRONT_L ;
 int M_IN2_FRONT_R ;
 int M_IN2_REC_L ;
 int M_IN2_REC_R ;
 int M_IN3_FRONT_L ;
 int M_IN3_FRONT_R ;
 int M_IN3_REC_L ;
 int M_IN3_REC_R ;
 int M_IN4_FRONT_L ;
 int M_IN4_FRONT_R ;
 int M_IN4_REC_L ;
 int M_IN4_REC_R ;
 int M_IN5_FRONT_L ;
 int M_IN5_FRONT_R ;
 int M_IN5_REC_L ;
 int M_IN5_REC_R ;
 int M_IN6_FRONT_L ;
 int M_IN6_FRONT_R ;
 int M_IN6_REC_L ;
 int M_IN6_REC_R ;
 int M_IN7_FRONT_L ;
 int M_IN7_FRONT_R ;
 int M_IN7_REC_L ;
 int M_IN7_REC_R ;
 int M_MASTER_CENTER ;
 int M_MASTER_FRONT_L ;
 int M_MASTER_FRONT_R ;
 int M_MASTER_REAR_L ;
 int M_MASTER_REAR_R ;
 int M_MASTER_REC_L ;
 int M_MASTER_REC_R ;
 int M_MASTER_SIDE_L ;
 int M_MASTER_SIDE_R ;
 int M_MASTER_SUBWOOFER ;
 unsigned int NUM_MUTE ;
 int OUTP (unsigned int) ;
 int OUT_AC97_L ;
 int OUT_AC97_R ;
 int OUT_ADC_REC_L ;
 int OUT_ADC_REC_R ;
 int OUT_A_CENTER ;
 int OUT_A_SUB ;
 int OUT_D_CENTER ;
 int OUT_D_SUB ;
 int OUT_HEADPHONE_L ;
 int OUT_HEADPHONE_R ;
 int OUT_REAR_L ;
 int OUT_REAR_R ;
 int OUT_TOSLINK_L ;
 int OUT_TOSLINK_R ;
 int SKIP ;
 int emu_addefxop (struct emu_sc_info*,int ,int ,int ,int ,int ,scalar_t__*) ;
 int emu_digitalswitch (struct emu_sc_info*) ;
 void* emu_rm_gpr_alloc (int ,int) ;
 int emu_wrptr (struct emu_sc_info*,int ,int ,int ) ;
 int emumix_set_gpr (struct emu_sc_info*,void*,int) ;

__attribute__((used)) static void
emu_initefx(struct emu_sc_info *sc)
{
 unsigned int i;
 uint32_t pc;


 if (sc->is_emu10k1) {
  emu_wrptr(sc, 0, EMU_DBG, EMU_DBG_SINGLE_STEP);
 } else {
  emu_wrptr(sc, 0, EMU_A_DBG, EMU_A_DBG_SINGLE_STEP);
 }


 pc = 0;
 for (i = 0; i < sc->code_size; i++) {
  if (sc->is_emu10k1) {
   emu_addefxop(sc, ACC3, DSP_CONST(0x0), DSP_CONST(0x0), DSP_CONST(0x0), DSP_CONST(0x0), &pc);
  } else {
   emu_addefxop(sc, SKIP, DSP_CONST(0x0), DSP_CONST(0x0), DSP_CONST(0xf), DSP_CONST(0x0), &pc);
  }
 }


 for (i = 0; i < NUM_MUTE; i++) {
  sc->mute_gpr[i] = emu_rm_gpr_alloc(sc->rm, 1);
  emumix_set_gpr(sc, sc->mute_gpr[i], 1);
 }
 emu_digitalswitch(sc);

 pc = 0;
 for (i = 0; i < 16 ; i++) {
  emu_addefxop(sc, ACC3, OUTP(i), DSP_CONST(0), DSP_CONST(0), DSP_CONST(0), &pc);
 }


 if (sc->is_emu10k1) {
  EFX_CACHE(C_FRONT_L);
  EFX_CACHE(C_FRONT_R);
  EFX_CACHE(C_REC_L);
  EFX_CACHE(C_REC_R);


  EFX_ROUTE("pcm_front_l", FX(0), M_FX0_FRONT_L, C_FRONT_L, 100);
  EFX_ROUTE("pcm_front_r", FX(1), M_FX1_FRONT_R, C_FRONT_R, 100);
  EFX_ROUTE(((void*)0), FX(0), M_FX0_REC_L, C_REC_L, 0);
  EFX_ROUTE(((void*)0), FX(1), M_FX1_REC_R, C_REC_R, 0);


  EFX_ROUTE("ac97_front_l", INP(IN_AC97_L), M_IN0_FRONT_L, C_FRONT_L, 0);
  EFX_ROUTE("ac97_front_r", INP(IN_AC97_R), M_IN0_FRONT_R, C_FRONT_R, 0);
  EFX_ROUTE("ac97_rec_l", INP(IN_AC97_L), M_IN0_REC_L, C_REC_L, 0);
  EFX_ROUTE("ac97_rec_r", INP(IN_AC97_R), M_IN0_REC_R, C_REC_R, 0);



  EFX_SKIP(4, CDSPDIFMUTE);
  EFX_ROUTE(((void*)0), INP(IN_SPDIF_CD_L), M_IN1_FRONT_L, C_FRONT_L, 0);
  EFX_ROUTE(((void*)0), INP(IN_SPDIF_CD_R), M_IN1_FRONT_R, C_FRONT_R, 0);
  EFX_ROUTE(((void*)0), INP(IN_SPDIF_CD_L), M_IN1_REC_L, C_REC_L, 0);
  EFX_ROUTE(((void*)0), INP(IN_SPDIF_CD_R), M_IN1_REC_R, C_REC_R, 0);

  if (sc->dbg_level > 0) {

   EFX_ROUTE("zoom_front_l", INP(IN_ZOOM_L), M_IN2_FRONT_L, C_FRONT_L, 0);
   EFX_ROUTE("zoom_front_r", INP(IN_ZOOM_R), M_IN2_FRONT_R, C_FRONT_R, 0);
   EFX_ROUTE("zoom_rec_l", INP(IN_ZOOM_L), M_IN2_REC_L, C_REC_L, 0);
   EFX_ROUTE("zoom_rec_r", INP(IN_ZOOM_R), M_IN2_REC_R, C_REC_R, 0);
  }


  EFX_ROUTE(((void*)0), INP(IN_TOSLINK_L), M_IN3_FRONT_L, C_FRONT_L, 0);
  EFX_ROUTE(((void*)0), INP(IN_TOSLINK_R), M_IN3_FRONT_R, C_FRONT_R, 0);
  EFX_ROUTE(((void*)0), INP(IN_TOSLINK_L), M_IN3_REC_L, C_REC_L, 0);
  EFX_ROUTE(((void*)0), INP(IN_TOSLINK_R), M_IN3_REC_R, C_REC_R, 0);

  EFX_ROUTE(((void*)0), INP(IN_LINE1_L), M_IN4_FRONT_L, C_FRONT_L, 0);
  EFX_ROUTE(((void*)0), INP(IN_LINE1_R), M_IN4_FRONT_R, C_FRONT_R, 0);
  EFX_ROUTE(((void*)0), INP(IN_LINE1_L), M_IN4_REC_L, C_REC_L, 0);
  EFX_ROUTE(((void*)0), INP(IN_LINE1_R), M_IN4_REC_R, C_REC_R, 0);


  EFX_ROUTE(((void*)0), INP(IN_COAX_SPDIF_L), M_IN5_FRONT_L, C_FRONT_L, 0);
  EFX_ROUTE(((void*)0), INP(IN_COAX_SPDIF_R), M_IN5_FRONT_R, C_FRONT_R, 0);
  EFX_ROUTE(((void*)0), INP(IN_COAX_SPDIF_L), M_IN5_REC_L, C_REC_L, 0);
  EFX_ROUTE(((void*)0), INP(IN_COAX_SPDIF_R), M_IN5_REC_R, C_REC_R, 0);


  EFX_ROUTE(((void*)0), INP(IN_LINE2_L), M_IN6_FRONT_L, C_FRONT_L, 0);
  EFX_ROUTE(((void*)0), INP(IN_LINE2_R), M_IN6_FRONT_R, C_FRONT_R, 0);
  EFX_ROUTE(((void*)0), INP(IN_LINE2_L), M_IN6_REC_L, C_REC_L, 0);
  EFX_ROUTE(((void*)0), INP(IN_LINE2_R), M_IN6_REC_R, C_REC_R, 0);

  if (sc->dbg_level > 0) {

   EFX_ROUTE("in7_front_l", INP(0xE), M_IN7_FRONT_L, C_FRONT_L, 0);
   EFX_ROUTE("in7_front_r", INP(0xF), M_IN7_FRONT_R, C_FRONT_R, 0);
   EFX_ROUTE("in7_rec_l", INP(0xE), M_IN7_REC_L, C_REC_L, 0);
   EFX_ROUTE("in7_rec_r", INP(0xF), M_IN7_REC_R, C_REC_R, 0);
  }


  EFX_OUTPUT("master_front_l", C_FRONT_L, M_MASTER_FRONT_L, OUT_AC97_L, 100);
  EFX_OUTPUT("master_front_r", C_FRONT_R, M_MASTER_FRONT_R, OUT_AC97_R, 100);

  EFX_OUTPUTD(C_FRONT_L, M_MASTER_FRONT_L, OUT_TOSLINK_L);
  EFX_OUTPUTD(C_FRONT_R, M_MASTER_FRONT_R, OUT_TOSLINK_R);

  EFX_OUTPUTD(C_FRONT_L, M_MASTER_FRONT_L, OUT_HEADPHONE_L);
  EFX_OUTPUTD(C_FRONT_R, M_MASTER_FRONT_R, OUT_HEADPHONE_R);


  EFX_OUTPUT("master_rec_l", C_REC_L, M_MASTER_REC_L, OUT_ADC_REC_L, 100);
  EFX_OUTPUT("master_rec_r", C_REC_R, M_MASTER_REC_R, OUT_ADC_REC_R, 100);

  if (!(sc->mch_disabled)) {






   EFX_CACHE(C_REAR_L);
   EFX_CACHE(C_REAR_R);
   EFX_ROUTE(((void*)0), FX(2), M_FX2_REAR_L, C_REAR_L, 100);
   EFX_ROUTE(((void*)0), FX(3), M_FX3_REAR_R, C_REAR_R, 100);

   EFX_OUTPUT(((void*)0), C_REAR_L, M_MASTER_REAR_L, OUT_REAR_L, 100);
   EFX_OUTPUT(((void*)0), C_REAR_R, M_MASTER_REAR_R, OUT_REAR_R, 100);
   if (sc->has_51) {

    EFX_CACHE(C_CENTER);
    EFX_ROUTE(((void*)0), FX(4), M_FX4_CENTER, C_CENTER, 100);
    EFX_OUTPUT(((void*)0), C_CENTER, M_MASTER_CENTER, OUT_D_CENTER, 100);



    EFX_SKIP(1, ANALOGMUTE);
    EFX_OUTPUTD(C_CENTER, M_MASTER_CENTER, OUT_A_CENTER);


    EFX_CACHE(C_SUB);
    EFX_ROUTE(((void*)0), FX(5), M_FX5_SUBWOOFER, C_SUB, 100);
    EFX_OUTPUT(((void*)0), C_SUB, M_MASTER_SUBWOOFER, OUT_D_SUB, 100);



    EFX_SKIP(1, ANALOGMUTE);
    EFX_OUTPUTD(C_SUB, M_MASTER_SUBWOOFER, OUT_A_SUB);

   }
  } else {

   EFX_OUTPUT(((void*)0), C_FRONT_L, M_MASTER_REAR_L, OUT_REAR_L, 57);
   EFX_OUTPUT(((void*)0), C_FRONT_R, M_MASTER_REAR_R, OUT_REAR_R, 57);
  }
  if (sc->mch_rec) {
   for(i = (sc->has_51 ? 2 : 0); i < 2; i++)
    EFX_COPY(FX2(i), DSP_CONST(0));


   for(i = 0; i < 4; i++)
    EFX_COPY(FX2(i+2), FX(i));


   for(i = 0; i < 9; i++)
    EFX_COPY(FX2(i+8), INP(i));


   sc->dummy_gpr = emu_rm_gpr_alloc(sc->rm, 1);
   emumix_set_gpr(sc, sc->dummy_gpr, 0xc0de0000);

   EFX_COPY(FX2(15), GPR(sc->dummy_gpr));
  }
 } else {
  EFX_CACHE(C_FRONT_L);
  EFX_CACHE(C_FRONT_R);
  EFX_CACHE(C_REC_L);
  EFX_CACHE(C_REC_R);






  EFX_ROUTE(((void*)0), FX(0), M_FX0_FRONT_L, C_FRONT_L, 100);
  EFX_ROUTE(((void*)0), FX(1), M_FX1_FRONT_R, C_FRONT_R, 100);
  EFX_ROUTE(((void*)0), FX(0), M_FX0_REC_L, C_REC_L, 0);
  EFX_ROUTE(((void*)0), FX(1), M_FX1_REC_R, C_REC_R, 0);


  EFX_ROUTE(((void*)0), INP(A_IN_AC97_L), M_IN0_FRONT_L, C_FRONT_L, 100);
  EFX_ROUTE(((void*)0), INP(A_IN_AC97_R), M_IN0_FRONT_R, C_FRONT_R, 100);
  EFX_ROUTE(((void*)0), INP(A_IN_AC97_L), M_IN0_REC_L, C_REC_L, 0);
  EFX_ROUTE(((void*)0), INP(A_IN_AC97_R), M_IN0_REC_R, C_REC_R, 0);


  EFX_ROUTE(((void*)0), INP(A_IN_SPDIF_CD_L), M_IN1_FRONT_L, C_FRONT_L, 0);
  EFX_ROUTE(((void*)0), INP(A_IN_SPDIF_CD_R), M_IN1_FRONT_R, C_FRONT_R, 0);
  EFX_ROUTE(((void*)0), INP(A_IN_SPDIF_CD_L), M_IN1_REC_L, C_REC_L, 0);
  EFX_ROUTE(((void*)0), INP(A_IN_SPDIF_CD_R), M_IN1_REC_R, C_REC_R, 0);



  EFX_ROUTE(((void*)0), INP(A_IN_O_SPDIF_L), M_IN2_FRONT_L, C_FRONT_L, 0);
  EFX_ROUTE(((void*)0), INP(A_IN_O_SPDIF_R), M_IN2_FRONT_R, C_FRONT_R, 0);
  EFX_ROUTE(((void*)0), INP(A_IN_O_SPDIF_L), M_IN2_REC_L, C_REC_L, 0);
  EFX_ROUTE(((void*)0), INP(A_IN_O_SPDIF_R), M_IN2_REC_R, C_REC_R, 0);

  if (sc->dbg_level > 0) {

   EFX_ROUTE("in3_front_l", INP(0x6), M_IN3_FRONT_L, C_FRONT_L, 0);
   EFX_ROUTE("in3_front_r", INP(0x7), M_IN3_FRONT_R, C_FRONT_R, 0);
   EFX_ROUTE("in3_rec_l", INP(0x6), M_IN3_REC_L, C_REC_L, 0);
   EFX_ROUTE("in3_rec_r", INP(0x7), M_IN3_REC_R, C_REC_R, 0);
  }


  EFX_ROUTE(((void*)0), INP(A_IN_LINE2_L), M_IN4_FRONT_L, C_FRONT_L, 0);
  EFX_ROUTE(((void*)0), INP(A_IN_LINE2_R), M_IN4_FRONT_R, C_FRONT_R, 0);
  EFX_ROUTE(((void*)0), INP(A_IN_LINE2_L), M_IN4_REC_L, C_REC_L, 0);
  EFX_ROUTE(((void*)0), INP(A_IN_LINE2_R), M_IN4_REC_R, C_REC_R, 0);


  EFX_ROUTE(((void*)0), INP(A_IN_R_SPDIF_L), M_IN5_FRONT_L, C_FRONT_L, 0);
  EFX_ROUTE(((void*)0), INP(A_IN_R_SPDIF_R), M_IN5_FRONT_R, C_FRONT_R, 0);
  EFX_ROUTE(((void*)0), INP(A_IN_R_SPDIF_L), M_IN5_REC_L, C_REC_L, 0);
  EFX_ROUTE(((void*)0), INP(A_IN_R_SPDIF_R), M_IN5_REC_R, C_REC_R, 0);


  EFX_ROUTE(((void*)0), INP(A_IN_AUX2_L), M_IN6_FRONT_L, C_FRONT_L, 0);
  EFX_ROUTE(((void*)0), INP(A_IN_AUX2_R), M_IN6_FRONT_R, C_FRONT_R, 0);
  EFX_ROUTE(((void*)0), INP(A_IN_AUX2_L), M_IN6_REC_L, C_REC_L, 0);
  EFX_ROUTE(((void*)0), INP(A_IN_AUX2_R), M_IN6_REC_R, C_REC_R, 0);

  if (sc->dbg_level > 0) {

   EFX_ROUTE("in7_front_l", INP(0xE), M_IN7_FRONT_L, C_FRONT_L, 0);
   EFX_ROUTE("in7_front_r", INP(0xF), M_IN7_FRONT_R, C_FRONT_R, 0);
   EFX_ROUTE("in7_rec_l", INP(0xE), M_IN7_REC_L, C_REC_L, 0);
   EFX_ROUTE("in7_rec_r", INP(0xF), M_IN7_REC_R, C_REC_R, 0);
  }



  EFX_OUTPUT(((void*)0), C_FRONT_L, M_MASTER_FRONT_L, A_OUT_A_FRONT_L, 100);
  EFX_OUTPUT(((void*)0), C_FRONT_R, M_MASTER_FRONT_R, A_OUT_A_FRONT_R, 100);
  EFX_OUTPUTD(C_FRONT_L, M_MASTER_FRONT_L, A_OUT_D_FRONT_L);
  EFX_OUTPUTD(C_FRONT_R, M_MASTER_FRONT_R, A_OUT_D_FRONT_R);
  EFX_OUTPUTD(C_FRONT_L, M_MASTER_FRONT_L, A_OUT_HPHONE_L);
  EFX_OUTPUTD(C_FRONT_R, M_MASTER_FRONT_R, A_OUT_HPHONE_R);



  EFX_OUTPUT(((void*)0), C_REC_L, M_MASTER_REC_L, A_OUT_ADC_REC_L, 100);
  EFX_OUTPUT(((void*)0), C_REC_R, M_MASTER_REC_R, A_OUT_ADC_REC_R, 100);

  if (!(sc->mch_disabled)) {






   EFX_CACHE(C_REAR_L);
   EFX_CACHE(C_REAR_R);
   EFX_ROUTE(((void*)0), FX(2), M_FX2_REAR_L, C_REAR_L, 100);
   EFX_ROUTE(((void*)0), FX(3), M_FX3_REAR_R, C_REAR_R, 100);

   EFX_OUTPUT(((void*)0), C_REAR_L, M_MASTER_REAR_L, A_OUT_A_REAR_L, 100);
   EFX_OUTPUT(((void*)0), C_REAR_R, M_MASTER_REAR_R, A_OUT_A_REAR_R, 100);
   EFX_OUTPUTD(C_REAR_L, M_MASTER_REAR_L, A_OUT_D_REAR_L);
   EFX_OUTPUTD(C_REAR_R, M_MASTER_REAR_R, A_OUT_D_REAR_R);


   EFX_CACHE(C_CENTER);
   EFX_ROUTE(((void*)0), FX(4), M_FX4_CENTER, C_CENTER, 100);
   EFX_OUTPUT(((void*)0), C_CENTER, M_MASTER_CENTER, A_OUT_D_CENTER, 100);
   EFX_CACHE(C_SUB);
   EFX_ROUTE(((void*)0), FX(5), M_FX5_SUBWOOFER, C_SUB, 100);
   EFX_OUTPUT(((void*)0), C_SUB, M_MASTER_SUBWOOFER, A_OUT_D_SUB, 100);







   if (sc->has_71) {


    EFX_CACHE(C_SIDE_L);
    EFX_CACHE(C_SIDE_R);
    EFX_ROUTE(((void*)0), FX(6), M_FX6_SIDE_L, C_SIDE_L, 100);
    EFX_ROUTE(((void*)0), FX(7), M_FX7_SIDE_R, C_SIDE_R, 100);
    EFX_OUTPUT(((void*)0), C_SIDE_L, M_MASTER_SIDE_L, A_OUT_A_SIDE_L, 100);
    EFX_OUTPUT(((void*)0), C_SIDE_R, M_MASTER_SIDE_R, A_OUT_A_SIDE_R, 100);
    EFX_OUTPUTD(C_SIDE_L, M_MASTER_SIDE_L, A_OUT_D_SIDE_L);
    EFX_OUTPUTD(C_SIDE_R, M_MASTER_SIDE_R, A_OUT_D_SIDE_R);
   }
  } else {
   EFX_OUTPUTD(C_FRONT_L, M_MASTER_FRONT_L, A_OUT_A_REAR_L);
   EFX_OUTPUTD(C_FRONT_R, M_MASTER_FRONT_R, A_OUT_A_REAR_R);

   EFX_OUTPUTD(C_FRONT_L, M_MASTER_FRONT_L, A_OUT_D_REAR_L);
   EFX_OUTPUTD(C_FRONT_R, M_MASTER_FRONT_R, A_OUT_D_REAR_R);

   if (sc->has_51) {

    EFX_CACHE(C_CENTER);
    emu_addefxop(sc, MACS,
     GPR(sc->cache_gpr[C_CENTER]),
     GPR(sc->cache_gpr[C_CENTER]),
     DSP_CONST(0xd),
     GPR(sc->cache_gpr[C_FRONT_L]),
     &pc);
    emu_addefxop(sc, MACS,
     GPR(sc->cache_gpr[C_CENTER]),
     GPR(sc->cache_gpr[C_CENTER]),
     DSP_CONST(0xd),
     GPR(sc->cache_gpr[C_FRONT_R]),
     &pc);
    EFX_OUTPUT(((void*)0), C_CENTER, M_MASTER_CENTER, A_OUT_D_CENTER, 100);



    EFX_SKIP(1, ANALOGMUTE);
    EFX_OUTPUTD(C_CENTER, M_MASTER_CENTER, A_OUT_A_CENTER);


    EFX_CACHE(C_SUB);
    emu_addefxop(sc, MACS,
     GPR(sc->cache_gpr[C_SUB]),
     GPR(sc->cache_gpr[C_SUB]),
     DSP_CONST(0xd),
     GPR(sc->cache_gpr[C_FRONT_L]),
     &pc);
    emu_addefxop(sc, MACS,
     GPR(sc->cache_gpr[C_SUB]),
     GPR(sc->cache_gpr[C_SUB]),
     DSP_CONST(0xd),
     GPR(sc->cache_gpr[C_FRONT_R]),
     &pc);


    EFX_OUTPUT(((void*)0), C_SUB, M_MASTER_SUBWOOFER, A_OUT_D_SUB, 100);



    EFX_SKIP(1, ANALOGMUTE);
    EFX_OUTPUTD(C_SUB, M_MASTER_SUBWOOFER, A_OUT_A_SUB);
   }
  }
  if (sc->mch_rec) {
   for(i = 0; i < 16; i++)
    EFX_COPY(FX2(i), FX(i));


   for(i = 0; i < 16; i++)
    EFX_COPY(FX2(i+16), INP(i));







  }
 }

 sc->routing_code_end = pc;


 if (sc->is_emu10k1) {
  emu_wrptr(sc, 0, EMU_DBG, 0);
 } else {
  emu_wrptr(sc, 0, EMU_A_DBG, 0);
 }
}
