
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lsi64854_softc {int sc_dodrain; int sc_dev; } ;


 int DELAY (int) ;
 int EDMACSR_BITS ;
 int E_DRAIN ;
 int E_DRAINING ;
 int E_ERR_PEND ;
 int E_INT_PEND ;
 int E_INVALIDATE ;
 int E_SLAVE_ERR ;
 int L64854_EN_DMA ;
 int L64854_GCSR (struct lsi64854_softc*) ;
 int L64854_SCSR (struct lsi64854_softc*,int) ;
 int device_printf (int ,char*,int,int ) ;

__attribute__((used)) static int
lsi64854_enet_intr(void *arg)
{
 struct lsi64854_softc *sc = arg;
 uint32_t csr;
 int i, rv;

 csr = L64854_GCSR(sc);


 rv = ((csr & E_INT_PEND) != 0) ? 1 : 0;

 if (csr & (E_ERR_PEND | E_SLAVE_ERR)) {
  device_printf(sc->sc_dev, "error: csr=%b\n", csr,
      EDMACSR_BITS);
  csr &= ~L64854_EN_DMA;

  csr |= E_INVALIDATE | E_SLAVE_ERR;
  L64854_SCSR(sc, csr);

  sc->sc_dodrain = 1;
  return (-1);
 }


 if (sc->sc_dodrain) {
  i = 10;
  csr |= E_DRAIN;
  L64854_SCSR(sc, csr);
  while (i-- > 0 && (L64854_GCSR(sc) & E_DRAINING))
   DELAY(1);
  sc->sc_dodrain = 0;
 }

 return (rv);
}
