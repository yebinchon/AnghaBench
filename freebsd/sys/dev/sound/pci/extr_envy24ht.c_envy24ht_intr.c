
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int psize; int* blk; int* intr; int rsize; int lock; struct sc_chinfo* chan; int dev; } ;
struct sc_chinfo {int blk; int channel; scalar_t__ run; } ;


 int ENVY24HT_CHAN_PLAY_DAC1 ;
 int ENVY24HT_CHAN_PLAY_SPDIF ;
 int ENVY24HT_CHAN_REC_ADC1 ;
 int ENVY24HT_CHAN_REC_SPDIF ;
 int ENVY24HT_MT_PCNT ;
 int ENVY24HT_MT_RCNT ;
 int PCMDIR_PLAY ;
 int PCMDIR_REC ;
 int chn_intr (int ) ;
 int device_printf (int ,char*,...) ;
 scalar_t__ envy24ht_checkintr (struct sc_info*,int ) ;
 int envy24ht_rdmt (struct sc_info*,int ,int) ;
 int envy24ht_updintr (struct sc_info*,int ) ;
 int printf (char*,int,int,int) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static void
envy24ht_intr(void *p)
{
 struct sc_info *sc = (struct sc_info *)p;
 struct sc_chinfo *ch;
 u_int32_t ptr, dsize, feed;
 int i;




 snd_mtxlock(sc->lock);
 if (envy24ht_checkintr(sc, PCMDIR_PLAY)) {



  dsize = sc->psize / 4;
  ptr = dsize - envy24ht_rdmt(sc, ENVY24HT_MT_PCNT, 2) - 1;



  ptr -= ptr % sc->blk[0];
  feed = (ptr + dsize - sc->intr[0]) % dsize;



  for (i = ENVY24HT_CHAN_PLAY_DAC1; i <= ENVY24HT_CHAN_PLAY_SPDIF; i++) {
   ch = &sc->chan[i];




   if (ch->run && ch->blk <= feed) {
    snd_mtxunlock(sc->lock);
    chn_intr(ch->channel);
    snd_mtxlock(sc->lock);
   }
  }
  sc->intr[0] = ptr;
  envy24ht_updintr(sc, PCMDIR_PLAY);
 }
 if (envy24ht_checkintr(sc, PCMDIR_REC)) {



  dsize = sc->rsize / 4;
  ptr = dsize - envy24ht_rdmt(sc, ENVY24HT_MT_RCNT, 2) - 1;
  ptr -= ptr % sc->blk[1];
  feed = (ptr + dsize - sc->intr[1]) % dsize;
  for (i = ENVY24HT_CHAN_REC_ADC1; i <= ENVY24HT_CHAN_REC_SPDIF; i++) {
   ch = &sc->chan[i];
   if (ch->run && ch->blk <= feed) {
    snd_mtxunlock(sc->lock);
    chn_intr(ch->channel);
    snd_mtxlock(sc->lock);
   }
  }
  sc->intr[1] = ptr;
  envy24ht_updintr(sc, PCMDIR_REC);
 }
 snd_mtxunlock(sc->lock);

 return;
}
