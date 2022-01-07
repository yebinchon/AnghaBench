
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dma_was_active; } ;
struct TYPE_4__ {int dma_was_active; } ;
struct sc_info {int lock; TYPE_1__ rch; TYPE_2__ pch; } ;
typedef int device_t ;


 int cmi_ch0_stop (struct sc_info*,TYPE_2__*) ;
 int cmi_ch1_stop (struct sc_info*,TYPE_1__*) ;
 int cmi_power (struct sc_info*,int) ;
 struct sc_info* pcm_getdevinfo (int ) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static int
cmi_suspend(device_t dev)
{
 struct sc_info *sc = pcm_getdevinfo(dev);

 snd_mtxlock(sc->lock);
 sc->pch.dma_was_active = cmi_ch0_stop(sc, &sc->pch);
 sc->rch.dma_was_active = cmi_ch1_stop(sc, &sc->rch);
 cmi_power(sc, 3);
 snd_mtxunlock(sc->lock);
 return 0;
}
