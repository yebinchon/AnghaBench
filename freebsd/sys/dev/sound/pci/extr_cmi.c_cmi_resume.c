
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fmt; int spd; scalar_t__ dma_was_active; } ;
struct sc_info {int lock; TYPE_1__ rch; TYPE_1__ pch; } ;
typedef int device_t ;


 int ENXIO ;
 int cmi_ch0_start (struct sc_info*,TYPE_1__*) ;
 int cmi_ch1_start (struct sc_info*,TYPE_1__*) ;
 scalar_t__ cmi_init (struct sc_info*) ;
 int cmi_power (struct sc_info*,int ) ;
 int cmichan_setformat (int *,TYPE_1__*,int ) ;
 int cmichan_setspeed (int *,TYPE_1__*,int ) ;
 int device_printf (int ,char*) ;
 int mixer_reinit (int ) ;
 struct sc_info* pcm_getdevinfo (int ) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static int
cmi_resume(device_t dev)
{
 struct sc_info *sc = pcm_getdevinfo(dev);

 snd_mtxlock(sc->lock);
 cmi_power(sc, 0);
 if (cmi_init(sc) != 0) {
  device_printf(dev, "unable to reinitialize the card\n");
  snd_mtxunlock(sc->lock);
  return ENXIO;
 }

 if (mixer_reinit(dev) == -1) {
  device_printf(dev, "unable to reinitialize the mixer\n");
  snd_mtxunlock(sc->lock);
                return ENXIO;
        }

 if (sc->pch.dma_was_active) {
  cmichan_setspeed(((void*)0), &sc->pch, sc->pch.spd);
  cmichan_setformat(((void*)0), &sc->pch, sc->pch.fmt);
  cmi_ch0_start(sc, &sc->pch);
 }

 if (sc->rch.dma_was_active) {
  cmichan_setspeed(((void*)0), &sc->rch, sc->rch.spd);
  cmichan_setformat(((void*)0), &sc->rch, sc->rch.fmt);
  cmi_ch1_start(sc, &sc->rch);
 }
 snd_mtxunlock(sc->lock);
 return 0;
}
