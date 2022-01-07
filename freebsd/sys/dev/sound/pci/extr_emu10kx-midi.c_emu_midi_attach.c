
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sndcard_func {scalar_t__ varinfo; } ;
struct emu_midiinfo {scalar_t__ port; int card; } ;
struct emu_midi_softc {scalar_t__ port; int card; scalar_t__ is_emu10k1; int mtx; int ihandle; int * mpu; int mpu_intr; int dev; } ;
typedef int device_t ;


 scalar_t__ EMU_A_MUDATA1 ;
 int EMU_INTE_A_MIDIRXENABLE2 ;
 int EMU_INTE_MIDIRXENABLE ;
 int EMU_IPR_A_MIDIRECBUFE2 ;
 int EMU_IPR_A_MIDITRANSBUFE2 ;
 int EMU_IPR_MIDIRECVBUFE ;
 int EMU_IPR_MIDITRANSBUFE ;
 int ENOMEM ;
 int MTX_DEF ;
 struct sndcard_func* device_get_ivars (int ) ;
 int device_get_nameunit (int ) ;
 struct emu_midi_softc* device_get_softc (int ) ;
 int emu_enable_ir (int ) ;
 int emu_intr_register (int ,int ,int ,int *,struct emu_midi_softc*) ;
 int emu_intr_unregister (int ,int ) ;
 int emu_midi_card_intr ;
 int emu_midi_intr ;
 int emu_mpu_class ;
 int * mpu401_init (int *,struct emu_midi_softc*,int ,int *) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,char*,int ) ;

__attribute__((used)) static int
emu_midi_attach(device_t dev)
{
 struct emu_midi_softc * scp;
 struct sndcard_func *func;
 struct emu_midiinfo *midiinfo;
 uint32_t inte_val, ipr_val;

 scp = device_get_softc(dev);
 func = device_get_ivars(dev);

 scp->dev = dev;
 midiinfo = (struct emu_midiinfo *)func->varinfo;
 scp->port = midiinfo->port;
 scp->card = midiinfo->card;

 mtx_init(&scp->mtx, device_get_nameunit(dev), "midi softc", MTX_DEF);

 if (scp->is_emu10k1) {

  inte_val = 0;

  inte_val |= EMU_INTE_MIDIRXENABLE;
  ipr_val = EMU_IPR_MIDITRANSBUFE;
  ipr_val |= EMU_IPR_MIDIRECVBUFE;
 } else {
  if (scp->port == EMU_A_MUDATA1) {

   inte_val = 0;

   inte_val |= EMU_INTE_MIDIRXENABLE;
   ipr_val = EMU_IPR_MIDITRANSBUFE;
   ipr_val |= EMU_IPR_MIDIRECVBUFE;
  } else {

   inte_val = 0;

   inte_val |= EMU_INTE_A_MIDIRXENABLE2;
   ipr_val = EMU_IPR_A_MIDITRANSBUFE2;
   ipr_val |= EMU_IPR_A_MIDIRECBUFE2;
  }
 }

 scp->ihandle = emu_intr_register(scp->card, inte_val, ipr_val, &emu_midi_card_intr, scp);

 scp->mpu = mpu401_init(&emu_mpu_class, scp, emu_midi_intr, &scp->mpu_intr);
 if (scp->mpu == ((void*)0)) {
  emu_intr_unregister(scp->card, scp->ihandle);
  mtx_destroy(&scp->mtx);
  return (ENOMEM);
 }





 if (scp->is_emu10k1)
  emu_enable_ir(scp->card);
 else {
  if (scp->port == EMU_A_MUDATA1)
   emu_enable_ir(scp->card);
 }

 return (0);
}
