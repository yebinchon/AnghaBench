
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dma_active; int fmt; int blksz; int spd; } ;
struct sc_info {TYPE_1__ pch; TYPE_1__ rch; } ;
typedef int device_t ;


 int ENXIO ;
 int adcdac_go (TYPE_1__*,int ) ;
 int cs4281_init (struct sc_info*) ;
 int cs4281_power (struct sc_info*,int ) ;
 int cs4281chan_setblocksize (int *,TYPE_1__*,int ) ;
 int cs4281chan_setformat (int *,TYPE_1__*,int ) ;
 int cs4281chan_setspeed (int *,TYPE_1__*,int ) ;
 int device_printf (int ,char*) ;
 int mixer_reinit (int ) ;
 struct sc_info* pcm_getdevinfo (int ) ;

__attribute__((used)) static int
cs4281_pci_resume(device_t dev)
{
    struct sc_info *sc;

    sc = pcm_getdevinfo(dev);


    cs4281_power(sc, 0);


    if (cs4281_init(sc) == -1) {
        device_printf(dev, "unable to reinitialize the card\n");
        return ENXIO;
    }


    if (mixer_reinit(dev) == -1) {
 device_printf(dev, "unable to reinitialize the mixer\n");
 return ENXIO;
    }


    cs4281chan_setspeed(((void*)0), &sc->rch, sc->rch.spd);
    cs4281chan_setblocksize(((void*)0), &sc->rch, sc->rch.blksz);
    cs4281chan_setformat(((void*)0), &sc->rch, sc->rch.fmt);
    adcdac_go(&sc->rch, sc->rch.dma_active);

    cs4281chan_setspeed(((void*)0), &sc->pch, sc->pch.spd);
    cs4281chan_setblocksize(((void*)0), &sc->pch, sc->pch.blksz);
    cs4281chan_setformat(((void*)0), &sc->pch, sc->pch.fmt);
    adcdac_go(&sc->pch, sc->pch.dma_active);

    return 0;
}
