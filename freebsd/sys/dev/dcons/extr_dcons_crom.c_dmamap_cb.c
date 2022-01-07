
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uintmax_t ;
struct TYPE_5__ {int dev; } ;
struct dcons_crom_softc {scalar_t__ bus_addr; int dma_map; int dma_tag; TYPE_1__ fd; } ;
struct TYPE_6__ {scalar_t__ ds_addr; } ;
typedef TYPE_2__ bus_dma_segment_t ;
struct TYPE_7__ {int cdev; int dma_map; int dma_tag; } ;


 int BUS_DMASYNC_PREWRITE ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int cnselect (int ) ;
 TYPE_4__* dcons_conf ;
 scalar_t__ dcons_paddr ;
 int device_printf (int ,char*,...) ;
 scalar_t__ force_console ;
 int printf (char*,int) ;

__attribute__((used)) static void
dmamap_cb(void *arg, bus_dma_segment_t *segments, int seg, int error)
{
 struct dcons_crom_softc *sc;

 if (error)
  printf("dcons_dmamap_cb: error=%d\n", error);

 sc = (struct dcons_crom_softc *)arg;
 sc->bus_addr = segments[0].ds_addr;

 bus_dmamap_sync(sc->dma_tag, sc->dma_map, BUS_DMASYNC_PREWRITE);
 device_printf(sc->fd.dev,
     "bus_addr 0x%jx\n", (uintmax_t)sc->bus_addr);
 if (dcons_paddr != 0) {

  device_printf(sc->fd.dev, "dcons_paddr is already set\n");
  return;
 }
 dcons_conf->dma_tag = sc->dma_tag;
 dcons_conf->dma_map = sc->dma_map;
 dcons_paddr = sc->bus_addr;


 if (force_console)
  cnselect(dcons_conf->cdev);
}
