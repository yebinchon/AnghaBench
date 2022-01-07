
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {struct nge_desc* nge_rx_ring; } ;
struct nge_softc {TYPE_1__ nge_rdata; } ;
struct nge_desc {scalar_t__ nge_extsts; int nge_cmdsts; } ;


 scalar_t__ MCLBYTES ;
 int htole32 (scalar_t__) ;

__attribute__((used)) static __inline void
nge_discard_rxbuf(struct nge_softc *sc, int idx)
{
 struct nge_desc *desc;

 desc = &sc->nge_rdata.nge_rx_ring[idx];
 desc->nge_cmdsts = htole32(MCLBYTES - sizeof(uint64_t));
 desc->nge_extsts = 0;
}
