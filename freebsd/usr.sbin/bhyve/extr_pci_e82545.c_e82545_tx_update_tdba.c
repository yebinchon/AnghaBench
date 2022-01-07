
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct e82545_softc {int esc_tdba; int esc_TDBAL; int esc_TDLEN; int esc_ctx; int esc_txdesc; scalar_t__ esc_TDBAH; } ;


 int paddr_guest2host (int ,int,int ) ;

__attribute__((used)) static void
e82545_tx_update_tdba(struct e82545_softc *sc)
{


 sc->esc_tdba = (uint64_t)sc->esc_TDBAH << 32 | sc->esc_TDBAL;


 sc->esc_txdesc = paddr_guest2host(sc->esc_ctx, sc->esc_tdba,
            sc->esc_TDLEN);
}
