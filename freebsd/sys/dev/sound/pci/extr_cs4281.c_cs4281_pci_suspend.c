
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* dma_active; } ;
struct sc_info {TYPE_1__ pch; TYPE_1__ rch; } ;
typedef int device_t ;


 void* adcdac_go (TYPE_1__*,int ) ;
 int cs4281_power (struct sc_info*,int) ;
 struct sc_info* pcm_getdevinfo (int ) ;

__attribute__((used)) static int
cs4281_pci_suspend(device_t dev)
{
    struct sc_info *sc;

    sc = pcm_getdevinfo(dev);

    sc->rch.dma_active = adcdac_go(&sc->rch, 0);
    sc->pch.dma_active = adcdac_go(&sc->pch, 0);

    cs4281_power(sc, 3);

    return 0;
}
