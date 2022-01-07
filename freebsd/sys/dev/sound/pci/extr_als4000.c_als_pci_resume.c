
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dma_was_active; } ;
struct TYPE_3__ {scalar_t__ dma_was_active; } ;
struct sc_info {int lock; TYPE_2__ rch; TYPE_1__ pch; } ;
typedef int device_t ;


 int ENXIO ;
 int als_capture_start (TYPE_2__*) ;
 scalar_t__ als_init (struct sc_info*) ;
 int als_playback_start (TYPE_1__*) ;
 int device_printf (int ,char*) ;
 scalar_t__ mixer_reinit (int ) ;
 struct sc_info* pcm_getdevinfo (int ) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static int
als_pci_resume(device_t dev)
{
 struct sc_info *sc = pcm_getdevinfo(dev);


 snd_mtxlock(sc->lock);
 if (als_init(sc) != 0) {
  device_printf(dev, "unable to reinitialize the card\n");
  snd_mtxunlock(sc->lock);
  return ENXIO;
 }

 if (mixer_reinit(dev) != 0) {
  device_printf(dev, "unable to reinitialize the mixer\n");
  snd_mtxunlock(sc->lock);
  return ENXIO;
 }

 if (sc->pch.dma_was_active) {
  als_playback_start(&sc->pch);
 }

 if (sc->rch.dma_was_active) {
  als_capture_start(&sc->rch);
 }
 snd_mtxunlock(sc->lock);

 return 0;
}
