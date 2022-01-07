
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smist_softc {int command; int smi_cmd; } ;
struct set_ownership_data {scalar_t__ result; int buf; int command; int smi_cmd; } ;
typedef int device_t ;
typedef int bus_dmamap_t ;
typedef int bus_dma_tag_t ;


 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int DPRINT (int ,char*,scalar_t__) ;
 int ENXIO ;
 int Giant ;
 int PAGE_SIZE ;
 scalar_t__ bus_dma_tag_create (int *,int ,int ,int ,int ,int *,int *,int ,int,int ,int ,int ,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 scalar_t__ bus_dmamap_load (int ,int ,int ,int ,int ,struct set_ownership_data*,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,int *,int ,int *) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int busdma_lock_mutex ;
 struct smist_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int set_ownership_cb ;

__attribute__((used)) static int
set_ownership(device_t dev)
{
 struct smist_softc *sc;
 struct set_ownership_data cb_data;
 bus_dma_tag_t tag;
 bus_dmamap_t map;






 sc = device_get_softc(dev);
 if (bus_dma_tag_create( ((void*)0),
                   PAGE_SIZE, 0,
                 BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0), PAGE_SIZE, 1,
                    PAGE_SIZE, 0, busdma_lock_mutex, &Giant,
     &tag) != 0) {
  device_printf(dev, "can't create mem tag\n");
  return (ENXIO);
 }
 if (bus_dmamem_alloc(tag, &cb_data.buf, BUS_DMA_NOWAIT, &map) != 0) {
  bus_dma_tag_destroy(tag);
  device_printf(dev, "can't alloc mapped mem\n");
  return (ENXIO);
 }


 cb_data.smi_cmd = sc->smi_cmd;
 cb_data.command = sc->command;
 if (bus_dmamap_load(tag, map, cb_data.buf, PAGE_SIZE, set_ownership_cb,
     &cb_data, BUS_DMA_NOWAIT) != 0) {
  bus_dmamem_free(tag, cb_data.buf, map);
  bus_dma_tag_destroy(tag);
  device_printf(dev, "can't load mem\n");
  return (ENXIO);
 }
 DPRINT(dev, "taking ownership over BIOS return %d\n", cb_data.result);
 bus_dmamap_unload(tag, map);
 bus_dmamem_free(tag, cb_data.buf, map);
 bus_dma_tag_destroy(tag);
 return (cb_data.result ? ENXIO : 0);
}
