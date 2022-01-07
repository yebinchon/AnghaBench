
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dma_active; int dma_was_active; } ;
struct sc_info {TYPE_1__ pch; TYPE_1__ rch; } ;
typedef int device_t ;


 int PCMTRIG_ABORT ;
 struct sc_info* pcm_getdevinfo (int ) ;
 int sv_mix_mute_all (struct sc_info*) ;
 int sv_power (struct sc_info*,int) ;
 int svrchan_trigger (int *,TYPE_1__*,int ) ;

__attribute__((used)) static int
sv_suspend(device_t dev)
{
 struct sc_info *sc = pcm_getdevinfo(dev);

 sc->rch.dma_was_active = sc->rch.dma_active;
 svrchan_trigger(((void*)0), &sc->rch, PCMTRIG_ABORT);

 sc->pch.dma_was_active = sc->pch.dma_active;
 svrchan_trigger(((void*)0), &sc->pch, PCMTRIG_ABORT);

 sv_mix_mute_all(sc);
 sv_power(sc, 3);

 return 0;
}
