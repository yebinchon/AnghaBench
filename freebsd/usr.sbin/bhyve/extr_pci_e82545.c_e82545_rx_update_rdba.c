
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct e82545_softc {int esc_rdba; int esc_RDBAL; int esc_RDLEN; int esc_ctx; int esc_rxdesc; scalar_t__ esc_RDBAH; } ;


 int paddr_guest2host (int ,int,int ) ;

__attribute__((used)) static void
e82545_rx_update_rdba(struct e82545_softc *sc)
{


 sc->esc_rdba = (uint64_t)sc->esc_RDBAH << 32 |
     sc->esc_RDBAL;


 sc->esc_rxdesc = paddr_guest2host(sc->esc_ctx,
     sc->esc_rdba, sc->esc_RDLEN);
}
