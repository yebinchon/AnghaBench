
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_pcminfo {struct aic_softc* sc; } ;
struct sc_chinfo {struct sc_pcminfo* parent; } ;
struct aic_softc {int lock; } ;
typedef int kobj_t ;


 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static int
aicchan_free(kobj_t obj, void *data)
{
 struct sc_chinfo *ch = data;
 struct sc_pcminfo *scp = ch->parent;
 struct aic_softc *sc = scp->sc;

 snd_mtxlock(sc->lock);

 snd_mtxunlock(sc->lock);

 return (0);
}
