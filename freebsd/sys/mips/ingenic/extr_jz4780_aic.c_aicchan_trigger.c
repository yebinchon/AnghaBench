
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_pcminfo {struct aic_softc* sc; } ;
struct sc_chinfo {int run; struct sc_pcminfo* parent; } ;
struct aic_softc {int lock; int dma_size; int buf_base; int pos; } ;
typedef int kobj_t ;





 int aic_start (struct sc_pcminfo*) ;
 int aic_stop (struct sc_pcminfo*) ;
 int bzero (int ,int ) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static int
aicchan_trigger(kobj_t obj, void *data, int go)
{
 struct sc_pcminfo *scp;
 struct sc_chinfo *ch;
 struct aic_softc *sc;

 ch = data;
 scp = ch->parent;
 sc = scp->sc;

 snd_mtxlock(sc->lock);

 switch (go) {
 case 129:
  ch->run = 1;

  sc->pos = 0;

  aic_start(scp);

  break;

 case 128:
 case 130:
  ch->run = 0;

  aic_stop(scp);

  sc->pos = 0;

  bzero(sc->buf_base, sc->dma_size);

  break;
 }

 snd_mtxunlock(sc->lock);

 return (0);
}
