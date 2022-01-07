
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct rx_rs {int dummy; } ;
struct TYPE_2__ {int ale_rx_curp; struct ale_rx_page* ale_rx_page; } ;
struct ale_softc {TYPE_1__ ale_cdata; } ;
struct ale_rx_page {scalar_t__ cons; scalar_t__* cmb_addr; int cmb_map; int cmb_tag; int page_map; int page_tag; } ;


 scalar_t__ ALE_RXF0_PAGE0 ;
 int ALE_RX_PAGE_ALIGN ;
 scalar_t__ ALE_RX_PAGE_SZ ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CSR_WRITE_1 (struct ale_softc*,scalar_t__,int ) ;
 int RXF_VALID ;
 int bus_dmamap_sync (int ,int ,int) ;
 scalar_t__ roundup (scalar_t__,int ) ;

__attribute__((used)) static void
ale_rx_update_page(struct ale_softc *sc, struct ale_rx_page **page,
    uint32_t length, uint32_t *prod)
{
 struct ale_rx_page *rx_page;

 rx_page = *page;

 rx_page->cons += roundup(length + sizeof(struct rx_rs),
     ALE_RX_PAGE_ALIGN);
 if (rx_page->cons >= ALE_RX_PAGE_SZ) {




  rx_page->cons = 0;
  *rx_page->cmb_addr = 0;
  bus_dmamap_sync(rx_page->cmb_tag, rx_page->cmb_map,
      BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
  CSR_WRITE_1(sc, ALE_RXF0_PAGE0 + sc->ale_cdata.ale_rx_curp,
      RXF_VALID);

  sc->ale_cdata.ale_rx_curp ^= 1;
  rx_page = *page =
      &sc->ale_cdata.ale_rx_page[sc->ale_cdata.ale_rx_curp];

  bus_dmamap_sync(rx_page->page_tag, rx_page->page_map,
      BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
  bus_dmamap_sync(rx_page->cmb_tag, rx_page->cmb_map,
      BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);

  *prod = *rx_page->cmb_addr;
 }
}
