
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int dummy; } ;


 scalar_t__ NIG_REG_LLH0_FUNC_EN ;
 int REG_WR (struct bxe_softc*,scalar_t__,int ) ;
 int SC_PORT (struct bxe_softc*) ;
 int bxe_tx_disable (struct bxe_softc*) ;

__attribute__((used)) static void
bxe_e1h_disable(struct bxe_softc *sc)
{
    int port = SC_PORT(sc);

    bxe_tx_disable(sc);

    REG_WR(sc, NIG_REG_LLH0_FUNC_EN + port*8, 0);
}
