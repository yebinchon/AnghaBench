
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dma_was_active; } ;
struct TYPE_3__ {int dma_was_active; } ;
struct sc_info {int lock; TYPE_2__ rch; TYPE_1__ pch; } ;
typedef int device_t ;


 int als_capture_stop (TYPE_2__*) ;
 int als_playback_stop (TYPE_1__*) ;
 int als_uninit (struct sc_info*) ;
 struct sc_info* pcm_getdevinfo (int ) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static int
als_pci_suspend(device_t dev)
{
 struct sc_info *sc = pcm_getdevinfo(dev);

 snd_mtxlock(sc->lock);
 sc->pch.dma_was_active = als_playback_stop(&sc->pch);
 sc->rch.dma_was_active = als_capture_stop(&sc->rch);
 als_uninit(sc);
 snd_mtxunlock(sc->lock);
 return 0;
}
