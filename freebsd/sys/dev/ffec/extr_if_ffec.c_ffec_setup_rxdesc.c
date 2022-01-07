
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct ffec_softc {TYPE_1__* rxdesc_ring; } ;
typedef scalar_t__ bus_addr_t ;
struct TYPE_2__ {int flags_len; scalar_t__ buf_paddr; } ;


 int FEC_RXDESC_EMPTY ;
 int FEC_RXDESC_WRAP ;
 scalar_t__ next_rxidx (struct ffec_softc*,int) ;

__attribute__((used)) inline static uint32_t
ffec_setup_rxdesc(struct ffec_softc *sc, int idx, bus_addr_t paddr)
{
 uint32_t nidx;






 nidx = next_rxidx(sc, idx);
 sc->rxdesc_ring[idx].buf_paddr = (uint32_t)paddr;
 sc->rxdesc_ring[idx].flags_len = FEC_RXDESC_EMPTY |
  ((nidx == 0) ? FEC_RXDESC_WRAP : 0);

 return (nidx);
}
