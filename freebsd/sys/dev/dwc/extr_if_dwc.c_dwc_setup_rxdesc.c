
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct dwc_softc {scalar_t__ mactype; TYPE_1__* rxdesc_ring; scalar_t__ rxdesc_ring_paddr; } ;
struct dwc_hwdesc {int dummy; } ;
typedef scalar_t__ bus_addr_t ;
struct TYPE_2__ {int addr; int tdes1; int tdes0; scalar_t__ addr_next; } ;


 int DDESC_CNTL_CHAINED ;
 int DDESC_RDES0_OWN ;
 int DDESC_RDES1_CHAINED ;
 scalar_t__ DWC_GMAC_ALT_DESC ;
 int MCLBYTES ;
 int RX_MAX_PACKET ;
 int next_rxidx (struct dwc_softc*,int) ;
 int wmb () ;

__attribute__((used)) inline static uint32_t
dwc_setup_rxdesc(struct dwc_softc *sc, int idx, bus_addr_t paddr)
{
 uint32_t nidx;

 sc->rxdesc_ring[idx].addr = (uint32_t)paddr;
 nidx = next_rxidx(sc, idx);
 sc->rxdesc_ring[idx].addr_next = sc->rxdesc_ring_paddr + (nidx * sizeof(struct dwc_hwdesc));

 if (sc->mactype == DWC_GMAC_ALT_DESC)
  sc->rxdesc_ring[idx].tdes1 = DDESC_CNTL_CHAINED | RX_MAX_PACKET;
 else
  sc->rxdesc_ring[idx].tdes1 = DDESC_RDES1_CHAINED | MCLBYTES;

 wmb();
 sc->rxdesc_ring[idx].tdes0 = DDESC_RDES0_OWN;
 wmb();

 return (nidx);
}
