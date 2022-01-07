
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sc_pcminfo {int chnum; struct sc_chinfo* chan; struct sc_info* sc; } ;
struct sc_info {int lock; } ;
struct sc_chinfo {int channel; } ;


 int chn_intr (int ) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static uint32_t
hdspe_pcm_intr(struct sc_pcminfo *scp)
{
 struct sc_chinfo *ch;
 struct sc_info *sc;
 int i;

 sc = scp->sc;

 for (i = 0; i < scp->chnum; i++) {
  ch = &scp->chan[i];
  snd_mtxunlock(sc->lock);
  chn_intr(ch->channel);
  snd_mtxlock(sc->lock);
 }

 return (0);
}
