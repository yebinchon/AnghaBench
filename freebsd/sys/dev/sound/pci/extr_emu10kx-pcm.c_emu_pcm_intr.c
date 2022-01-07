
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {scalar_t__ channel; } ;
struct TYPE_5__ {scalar_t__ channel; scalar_t__ run; } ;
struct emu_pcm_info {int lock; TYPE_3__ rch_efx; TYPE_2__ rch_adc; TYPE_1__* pch; int card; } ;
struct TYPE_4__ {int run; int timer; scalar_t__ channel; } ;


 int EMU_IPR_ADCBUFFULL ;
 int EMU_IPR_ADCBUFHALFFULL ;
 int EMU_IPR_EFXBUFFULL ;
 int EMU_IPR_EFXBUFHALFFULL ;
 int EMU_IPR_INTERVALTIMER ;
 int MAX_CHANNELS ;
 int chn_intr (scalar_t__) ;
 int emu_timer_enable (int ,int ,int ) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static uint32_t
emu_pcm_intr(void *pcm, uint32_t stat)
{
 struct emu_pcm_info *sc = (struct emu_pcm_info *)pcm;
 uint32_t ack;
 int i;

 ack = 0;

 snd_mtxlock(sc->lock);

 if (stat & EMU_IPR_INTERVALTIMER) {
  ack |= EMU_IPR_INTERVALTIMER;
  for (i = 0; i < MAX_CHANNELS; i++)
   if (sc->pch[i].channel) {
    if (sc->pch[i].run == 1) {
     snd_mtxunlock(sc->lock);
     chn_intr(sc->pch[i].channel);
     snd_mtxlock(sc->lock);
    } else
     emu_timer_enable(sc->card, sc->pch[i].timer, 0);
   }

  if ((sc->rch_adc.channel) && (sc->rch_adc.run)) {
   snd_mtxunlock(sc->lock);
   chn_intr(sc->rch_adc.channel);
   snd_mtxlock(sc->lock);
  }




 }


 if (stat & (EMU_IPR_ADCBUFFULL | EMU_IPR_ADCBUFHALFFULL)) {
  ack |= stat & (EMU_IPR_ADCBUFFULL | EMU_IPR_ADCBUFHALFFULL);
  if (sc->rch_adc.channel) {
   snd_mtxunlock(sc->lock);
   chn_intr(sc->rch_adc.channel);
   snd_mtxlock(sc->lock);
  }
 }

 if (stat & (EMU_IPR_EFXBUFFULL | EMU_IPR_EFXBUFHALFFULL)) {
  ack |= stat & (EMU_IPR_EFXBUFFULL | EMU_IPR_EFXBUFHALFFULL);
  if (sc->rch_efx.channel) {
   snd_mtxunlock(sc->lock);
   chn_intr(sc->rch_efx.channel);
   snd_mtxlock(sc->lock);
  }
 }
 snd_mtxunlock(sc->lock);

 return (ack);
}
