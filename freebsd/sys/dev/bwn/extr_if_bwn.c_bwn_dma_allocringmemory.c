
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bwn_softc {int sc_dev; } ;
struct bwn_dma {int parent_dtag; } ;
struct TYPE_2__ {struct bwn_dma dma; } ;
struct bwn_mac {struct bwn_softc* mac_sc; TYPE_1__ mac_method; } ;
struct bwn_dma_ring {int dr_ring_dmabase; int dr_ring_descbase; int dr_ring_dmap; int dr_ring_dtag; struct bwn_mac* dr_mac; } ;


 int BUS_DMA_NOWAIT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int BWN_ALIGN ;
 int BWN_DMA_RINGMEMSIZE ;
 int bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dmamap_load (int ,int ,int ,int ,int ,int *,int ) ;
 int bus_dmamem_alloc (int ,int *,int,int *) ;
 int bwn_dma_ring_addr ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
bwn_dma_allocringmemory(struct bwn_dma_ring *dr)
{
 struct bwn_mac *mac = dr->dr_mac;
 struct bwn_dma *dma = &mac->mac_method.dma;
 struct bwn_softc *sc = mac->mac_sc;
 int error;

 error = bus_dma_tag_create(dma->parent_dtag,
       BWN_ALIGN, 0,
       BUS_SPACE_MAXADDR,
       BUS_SPACE_MAXADDR,
       ((void*)0), ((void*)0),
       BWN_DMA_RINGMEMSIZE,
       1,
       BUS_SPACE_MAXSIZE_32BIT,
       0,
       ((void*)0), ((void*)0),
       &dr->dr_ring_dtag);
 if (error) {
  device_printf(sc->sc_dev,
      "can't create TX ring DMA tag: TODO frees\n");
  return (-1);
 }

 error = bus_dmamem_alloc(dr->dr_ring_dtag,
     &dr->dr_ring_descbase, BUS_DMA_WAITOK | BUS_DMA_ZERO,
     &dr->dr_ring_dmap);
 if (error) {
  device_printf(sc->sc_dev,
      "can't allocate DMA mem: TODO frees\n");
  return (-1);
 }
 error = bus_dmamap_load(dr->dr_ring_dtag, dr->dr_ring_dmap,
     dr->dr_ring_descbase, BWN_DMA_RINGMEMSIZE,
     bwn_dma_ring_addr, &dr->dr_ring_dmabase, BUS_DMA_NOWAIT);
 if (error) {
  device_printf(sc->sc_dev,
      "can't load DMA mem: TODO free\n");
  return (-1);
 }

 return (0);
}
