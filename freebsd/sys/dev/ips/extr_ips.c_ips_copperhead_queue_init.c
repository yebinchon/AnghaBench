
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* copper_queue; int dev; int adapter_dmatag; } ;
typedef TYPE_1__ ips_softc_t ;
typedef int ips_copper_queue_t ;
typedef int bus_dmamap_t ;
typedef int bus_dma_tag_t ;
struct TYPE_8__ {int nextstatus; scalar_t__ base_phys_addr; int * status; int dmamap; int dmatag; } ;


 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int COPPER_REG_SQER ;
 int COPPER_REG_SQHR ;
 int COPPER_REG_SQSR ;
 int COPPER_REG_SQTR ;
 int ENOMEM ;
 int IPS_MAX_CMD_NUM ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_load (int ,int ,int *,int,int ,TYPE_4__*,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void*,int ,int *) ;
 int bus_dmamem_free (int ,TYPE_4__*,int ) ;
 int bzero (TYPE_4__*,int) ;
 int device_printf (int ,char*) ;
 int ips_copperhead_queue_callback ;
 int ips_write_4 (TYPE_1__*,int ,scalar_t__) ;

__attribute__((used)) static int ips_copperhead_queue_init(ips_softc_t *sc)
{
 int error;
 bus_dma_tag_t dmatag;
 bus_dmamap_t dmamap;
        if (bus_dma_tag_create( sc->adapter_dmatag,
                    1,
                    0,
                    BUS_SPACE_MAXADDR_32BIT,
                    BUS_SPACE_MAXADDR,
                    ((void*)0),
                    ((void*)0),
                    sizeof(ips_copper_queue_t),
                    1,
                    sizeof(ips_copper_queue_t),
                    0,
                    ((void*)0),
                    ((void*)0),
    &dmatag) != 0) {
                device_printf(sc->dev, "can't alloc dma tag for statue queue\n");
  error = ENOMEM;
  return error;
        }
 if(bus_dmamem_alloc(dmatag, (void *)&(sc->copper_queue),
          BUS_DMA_NOWAIT, &dmamap)){
  error = ENOMEM;
  goto exit;
 }
 bzero(sc->copper_queue, sizeof(ips_copper_queue_t));
 sc->copper_queue->dmatag = dmatag;
 sc->copper_queue->dmamap = dmamap;
 sc->copper_queue->nextstatus = 1;
 bus_dmamap_load(dmatag, dmamap,
   &(sc->copper_queue->status[0]), IPS_MAX_CMD_NUM * 4,
   ips_copperhead_queue_callback, sc->copper_queue,
   BUS_DMA_NOWAIT);
 if(sc->copper_queue->base_phys_addr == 0){
  error = ENOMEM;
  goto exit;
 }
 ips_write_4(sc, COPPER_REG_SQSR, sc->copper_queue->base_phys_addr);
 ips_write_4(sc, COPPER_REG_SQER, sc->copper_queue->base_phys_addr +
      IPS_MAX_CMD_NUM * 4);
 ips_write_4(sc, COPPER_REG_SQHR, sc->copper_queue->base_phys_addr + 4);
 ips_write_4(sc, COPPER_REG_SQTR, sc->copper_queue->base_phys_addr);


 return 0;
exit:
 if (sc->copper_queue != ((void*)0))
  bus_dmamem_free(dmatag, sc->copper_queue, dmamap);
 bus_dma_tag_destroy(dmatag);
 return error;
}
