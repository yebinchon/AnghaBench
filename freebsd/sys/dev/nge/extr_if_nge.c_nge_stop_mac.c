
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nge_softc {int dummy; } ;


 int CSR_READ_4 (struct nge_softc*,int ) ;
 int CSR_WRITE_4 (struct nge_softc*,int ,int) ;
 int DELAY (int) ;
 int ETIMEDOUT ;
 int NGE_CSR ;
 int NGE_CSR_RX_DISABLE ;
 int NGE_CSR_RX_ENABLE ;
 int NGE_CSR_TX_DISABLE ;
 int NGE_CSR_TX_ENABLE ;
 int NGE_LOCK_ASSERT (struct nge_softc*) ;
 int NGE_TIMEOUT ;

__attribute__((used)) static int
nge_stop_mac(struct nge_softc *sc)
{
 uint32_t reg;
 int i;

 NGE_LOCK_ASSERT(sc);

 reg = CSR_READ_4(sc, NGE_CSR);
 if ((reg & (NGE_CSR_TX_ENABLE | NGE_CSR_RX_ENABLE)) != 0) {
  reg &= ~(NGE_CSR_TX_ENABLE | NGE_CSR_RX_ENABLE);
  reg |= NGE_CSR_TX_DISABLE | NGE_CSR_RX_DISABLE;
  CSR_WRITE_4(sc, NGE_CSR, reg);
  for (i = 0; i < NGE_TIMEOUT; i++) {
   DELAY(1);
   if ((CSR_READ_4(sc, NGE_CSR) &
       (NGE_CSR_RX_ENABLE | NGE_CSR_TX_ENABLE)) == 0)
    break;
  }
  if (i == NGE_TIMEOUT)
   return (ETIMEDOUT);
 }

 return (0);
}
