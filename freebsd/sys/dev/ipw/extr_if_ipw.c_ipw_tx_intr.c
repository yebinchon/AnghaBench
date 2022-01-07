
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ipw_softc {int flags; int txold; int txfree; struct ipw_soft_bd* stbd_list; } ;
struct ipw_soft_bd {int dummy; } ;


 int CSR_READ_4 (struct ipw_softc*,int ) ;
 int IPW_CSR_TX_READ ;
 int IPW_FLAG_FW_INITED ;
 int IPW_NTBD ;
 int ipw_release_sbd (struct ipw_softc*,struct ipw_soft_bd*) ;
 int ipw_start (struct ipw_softc*) ;

__attribute__((used)) static void
ipw_tx_intr(struct ipw_softc *sc)
{
 struct ipw_soft_bd *sbd;
 uint32_t r, i;

 if (!(sc->flags & IPW_FLAG_FW_INITED))
  return;

 r = CSR_READ_4(sc, IPW_CSR_TX_READ);

 for (i = (sc->txold + 1) % IPW_NTBD; i != r; i = (i + 1) % IPW_NTBD) {
  sbd = &sc->stbd_list[i];
  ipw_release_sbd(sc, sbd);
  sc->txfree++;
 }


 sc->txold = (r == 0) ? IPW_NTBD - 1 : r - 1;

 ipw_start(sc);
}
