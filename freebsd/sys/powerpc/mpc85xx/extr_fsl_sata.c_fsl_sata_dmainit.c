
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_sata_dc_cb_args {int maddr; scalar_t__ error; } ;
struct TYPE_2__ {int work; int data_tag; int work_bus; int work_map; int work_tag; } ;
struct fsl_sata_channel {TYPE_1__ dma; int mtx; } ;
typedef int device_t ;


 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int FSL_SATA_MAX_XFER ;
 int FSL_SATA_PRD_MAX ;
 int FSL_SATA_SG_ENTRIES ;
 int FSL_SATA_WORK_SIZE ;
 scalar_t__ bootverbose ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 scalar_t__ bus_dmamap_load (int ,int ,int ,int ,int ,struct fsl_sata_dc_cb_args*,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int ,int *) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int bus_get_dma_tag (int ) ;
 int * busdma_lock_mutex ;
 struct fsl_sata_channel* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int fsl_sata_dmafini (int ) ;
 int fsl_sata_dmasetupc_cb ;

__attribute__((used)) static void
fsl_sata_dmainit(device_t dev)
{
 struct fsl_sata_channel *ch = device_get_softc(dev);
 struct fsl_sata_dc_cb_args dcba;


 if (bus_dma_tag_create(bus_get_dma_tag(dev), 1024, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0), FSL_SATA_WORK_SIZE, 1, FSL_SATA_WORK_SIZE,
     0, ((void*)0), ((void*)0), &ch->dma.work_tag))
  goto error;
 if (bus_dmamem_alloc(ch->dma.work_tag, (void **)&ch->dma.work,
     BUS_DMA_ZERO, &ch->dma.work_map))
  goto error;
 if (bus_dmamap_load(ch->dma.work_tag, ch->dma.work_map, ch->dma.work,
     FSL_SATA_WORK_SIZE, fsl_sata_dmasetupc_cb, &dcba, 0) || dcba.error) {
  bus_dmamem_free(ch->dma.work_tag, ch->dma.work, ch->dma.work_map);
  goto error;
 }
 ch->dma.work_bus = dcba.maddr;

 if (bus_dma_tag_create(bus_get_dma_tag(dev), 4, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0), FSL_SATA_MAX_XFER,
     FSL_SATA_SG_ENTRIES - 1, FSL_SATA_PRD_MAX,
     0, busdma_lock_mutex, &ch->mtx, &ch->dma.data_tag)) {
  goto error;
 }
 if (bootverbose)
  device_printf(dev, "work area: %p\n", ch->dma.work);
 return;

error:
 device_printf(dev, "WARNING - DMA initialization failed\n");
 fsl_sata_dmafini(dev);
}
