
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_4__ {int channel; } ;
struct TYPE_3__ {int channel; } ;
struct sc_info {int lock; int mpu; int (* mpu_intr ) (int ) ;TYPE_2__ rch; TYPE_1__ pch; } ;


 int CMPCI_REG_ANY_INTR ;
 int CMPCI_REG_CH0_INTR ;
 int CMPCI_REG_CH0_INTR_ENABLE ;
 int CMPCI_REG_CH1_INTR ;
 int CMPCI_REG_CH1_INTR_ENABLE ;
 int CMPCI_REG_INTR_CTRL ;
 int CMPCI_REG_INTR_STATUS ;
 int chn_intr (int ) ;
 int cmi_clr4 (struct sc_info*,int ,int) ;
 int cmi_rd (struct sc_info*,int ,int) ;
 int cmi_set4 (struct sc_info*,int ,int) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void
cmi_intr(void *data)
{
 struct sc_info *sc = data;
 u_int32_t intrstat;
 u_int32_t toclear;

 snd_mtxlock(sc->lock);
 intrstat = cmi_rd(sc, CMPCI_REG_INTR_STATUS, 4);
 if ((intrstat & CMPCI_REG_ANY_INTR) != 0) {

  toclear = 0;
  if (intrstat & CMPCI_REG_CH0_INTR) {
   toclear |= CMPCI_REG_CH0_INTR_ENABLE;

  }

  if (intrstat & CMPCI_REG_CH1_INTR) {
   toclear |= CMPCI_REG_CH1_INTR_ENABLE;

  }

  if (toclear) {
   cmi_clr4(sc, CMPCI_REG_INTR_CTRL, toclear);
   snd_mtxunlock(sc->lock);


   if (intrstat & CMPCI_REG_CH0_INTR) {
    chn_intr(sc->pch.channel);
   }

   if (intrstat & CMPCI_REG_CH1_INTR) {
    chn_intr(sc->rch.channel);
   }

   snd_mtxlock(sc->lock);
   cmi_set4(sc, CMPCI_REG_INTR_CTRL, toclear);

  }
 }
 if(sc->mpu_intr) {
  (sc->mpu_intr)(sc->mpu);
 }
 snd_mtxunlock(sc->lock);
 return;
}
