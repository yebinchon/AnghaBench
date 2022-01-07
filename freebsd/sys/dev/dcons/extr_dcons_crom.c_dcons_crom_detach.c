
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * post_busreset; } ;
struct dcons_crom_softc {int * dma_tag; int dma_map; scalar_t__ ehand; TYPE_1__ fd; } ;
typedef int device_t ;
struct TYPE_4__ {int * dma_tag; } ;


 int EVENTHANDLER_DEREGISTER (int ,scalar_t__) ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int ) ;
 int bus_dmamap_unload (int *,int ) ;
 TYPE_2__* dcons_conf ;
 int dcons_poll ;
 scalar_t__ device_get_softc (int ) ;

__attribute__((used)) static int
dcons_crom_detach(device_t dev)
{
 struct dcons_crom_softc *sc;

        sc = (struct dcons_crom_softc *) device_get_softc(dev);
 sc->fd.post_busreset = ((void*)0);

 if (sc->ehand)
  EVENTHANDLER_DEREGISTER(dcons_poll, sc->ehand);


 if (dcons_conf->dma_tag == sc->dma_tag)
  dcons_conf->dma_tag = ((void*)0);

 bus_dmamap_unload(sc->dma_tag, sc->dma_map);
 bus_dmamap_destroy(sc->dma_tag, sc->dma_map);
 bus_dma_tag_destroy(sc->dma_tag);

 return 0;
}
