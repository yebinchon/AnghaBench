
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct stge_rfd* stge_rx_ring; } ;
struct stge_softc {TYPE_1__ sc_rdata; } ;
struct stge_rfd {scalar_t__ rfd_status; } ;



__attribute__((used)) static __inline void
stge_discard_rxbuf(struct stge_softc *sc, int idx)
{
 struct stge_rfd *rfd;

 rfd = &sc->sc_rdata.stge_rx_ring[idx];
 rfd->rfd_status = 0;
}
