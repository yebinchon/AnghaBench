
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct TYPE_2__ {int silent_map; int silent_page; int ptb_map; int ptb_pages; int blocks; } ;
struct sc_info {scalar_t__ mpu; TYPE_1__ mem; int dev; scalar_t__ audigy; } ;


 int EMU_ADCBA ;
 int EMU_ADCBS ;
 int EMU_A_DBG ;
 int EMU_A_DBG_SINGLE_STEP ;
 int EMU_CHAN_CPF ;
 int EMU_CHAN_CVCF ;
 int EMU_CHAN_DCYSUSV ;
 int EMU_CHAN_PTRX ;
 int EMU_CHAN_VTFT ;
 int EMU_CLIEH ;
 int EMU_CLIEL ;
 int EMU_FXBA ;
 int EMU_FXBS ;
 int EMU_FXWC ;
 int EMU_HCFG ;
 int EMU_HCFG_LOCKSOUNDCACHE ;
 int EMU_HCFG_LOCKTANKCACHE_MASK ;
 int EMU_HCFG_MUTEBUTTONENABLE ;
 int EMU_INTE ;
 int EMU_MICBA ;
 int EMU_MICBS ;
 int EMU_PTB ;
 int EMU_RECBS_BUFSIZE_NONE ;
 int EMU_SOLEH ;
 int EMU_SOLEL ;
 int EMU_TCB ;
 int EMU_TCBS ;
 int ENV_OFF ;
 scalar_t__ NUM_G ;
 int SLIST_EMPTY (int *) ;
 int device_printf (int ,char*) ;
 int emu_free (struct sc_info*,int ,int ) ;
 int emu_wr (struct sc_info*,int ,int,int) ;
 int emu_wrptr (struct sc_info*,scalar_t__,int ,int ) ;
 int mpu401_uninit (scalar_t__) ;

__attribute__((used)) static int
emu_uninit(struct sc_info *sc)
{
 u_int32_t ch;

 emu_wr(sc, EMU_INTE, 0, 4);
 for (ch = 0; ch < NUM_G; ch++)
  emu_wrptr(sc, ch, EMU_CHAN_DCYSUSV, ENV_OFF);
 for (ch = 0; ch < NUM_G; ch++) {
  emu_wrptr(sc, ch, EMU_CHAN_VTFT, 0);
  emu_wrptr(sc, ch, EMU_CHAN_CVCF, 0);
  emu_wrptr(sc, ch, EMU_CHAN_PTRX, 0);
  emu_wrptr(sc, ch, EMU_CHAN_CPF, 0);
 }

 if (sc->audigy) {
  emu_wrptr(sc, 0, EMU_A_DBG, EMU_A_DBG_SINGLE_STEP);
 }


 emu_wr(sc, EMU_HCFG,
     EMU_HCFG_LOCKSOUNDCACHE | EMU_HCFG_LOCKTANKCACHE_MASK | EMU_HCFG_MUTEBUTTONENABLE,
     4);

 emu_wrptr(sc, 0, EMU_PTB, 0);

 emu_wrptr(sc, 0, EMU_MICBS, EMU_RECBS_BUFSIZE_NONE);
 emu_wrptr(sc, 0, EMU_MICBA, 0);
 emu_wrptr(sc, 0, EMU_FXBS, EMU_RECBS_BUFSIZE_NONE);
 emu_wrptr(sc, 0, EMU_FXBA, 0);
 emu_wrptr(sc, 0, EMU_FXWC, 0);
 emu_wrptr(sc, 0, EMU_ADCBS, EMU_RECBS_BUFSIZE_NONE);
 emu_wrptr(sc, 0, EMU_ADCBA, 0);
 emu_wrptr(sc, 0, EMU_TCB, 0);
 emu_wrptr(sc, 0, EMU_TCBS, 0);


 emu_wrptr(sc, 0, EMU_CLIEL, 0);
 emu_wrptr(sc, 0, EMU_CLIEH, 0);
 emu_wrptr(sc, 0, EMU_SOLEL, 0);
 emu_wrptr(sc, 0, EMU_SOLEH, 0);


 if (!SLIST_EMPTY(&sc->mem.blocks))
  device_printf(sc->dev, "warning: memblock list not empty\n");
 emu_free(sc, sc->mem.ptb_pages, sc->mem.ptb_map);
 emu_free(sc, sc->mem.silent_page, sc->mem.silent_map);

 if(sc->mpu)
     mpu401_uninit(sc->mpu);
 return 0;
}
