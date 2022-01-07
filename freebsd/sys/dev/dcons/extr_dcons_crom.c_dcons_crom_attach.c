
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_4__ {TYPE_2__* fc; void* post_busreset; int * post_explore; int dev; } ;
struct dcons_crom_softc {int ehand; int dma_map; int dma_tag; TYPE_1__ fd; } ;
typedef int device_t ;
struct TYPE_6__ {int size; int * buf; } ;
struct TYPE_5__ {int dmat; } ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_DMA_COHERENT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int ENXIO ;
 int EVENTHANDLER_REGISTER (int ,int ,void*,int ) ;
 int Giant ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int ,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_load (int ,int ,void*,int ,int ,struct dcons_crom_softc*,int ) ;
 int busdma_lock_mutex ;
 TYPE_3__* dcons_conf ;
 int dcons_crom_poll ;
 scalar_t__ dcons_crom_post_busreset ;
 int dcons_poll ;
 TYPE_2__* device_get_ivars (int ) ;
 scalar_t__ device_get_softc (int ) ;
 int dmamap_cb ;

__attribute__((used)) static int
dcons_crom_attach(device_t dev)
{
 struct dcons_crom_softc *sc;
 int error;

 if (dcons_conf->buf == ((void*)0))
  return (ENXIO);
        sc = (struct dcons_crom_softc *) device_get_softc(dev);
 sc->fd.fc = device_get_ivars(dev);
 sc->fd.dev = dev;
 sc->fd.post_explore = ((void*)0);
 sc->fd.post_busreset = (void *) dcons_crom_post_busreset;


 error = bus_dma_tag_create(
             sc->fd.fc->dmat,
                sizeof(u_int32_t),
               0,
              BUS_SPACE_MAXADDR,
               BUS_SPACE_MAXADDR,
            ((void*)0), ((void*)0),
              dcons_conf->size,
                1,
               BUS_SPACE_MAXSIZE_32BIT,
            BUS_DMA_ALLOCNOW,
              busdma_lock_mutex,
             &Giant,
  &sc->dma_tag);
 if (error != 0)
  return (error);
 error = bus_dmamap_create(sc->dma_tag, BUS_DMA_COHERENT, &sc->dma_map);
 if (error != 0)
  return (error);
 error = bus_dmamap_load(sc->dma_tag, sc->dma_map,
     (void *)dcons_conf->buf, dcons_conf->size,
     dmamap_cb, sc, 0);
 if (error != 0)
  return (error);
 sc->ehand = EVENTHANDLER_REGISTER(dcons_poll, dcons_crom_poll,
    (void *)sc, 0);
 return (0);
}
