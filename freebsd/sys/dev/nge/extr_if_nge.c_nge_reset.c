
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nge_softc {int nge_dev; } ;


 int CSR_READ_4 (struct nge_softc*,int ) ;
 int CSR_WRITE_4 (struct nge_softc*,int ,int) ;
 int DELAY (int) ;
 int NGE_CFG ;
 int NGE_CFG_64BIT_ADDR_ENB ;
 int NGE_CFG_64BIT_DATA_ENB ;
 int NGE_CLKRUN ;
 int NGE_CLKRUN_PMESTS ;
 int NGE_CSR ;
 int NGE_CSR_RESET ;
 int NGE_SETBIT (struct nge_softc*,int ,int) ;
 int NGE_TIMEOUT ;
 int NGE_WOLCSR ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
nge_reset(struct nge_softc *sc)
{
 uint32_t v;
 int i;

 NGE_SETBIT(sc, NGE_CSR, NGE_CSR_RESET);

 for (i = 0; i < NGE_TIMEOUT; i++) {
  if (!(CSR_READ_4(sc, NGE_CSR) & NGE_CSR_RESET))
   break;
  DELAY(1);
 }

 if (i == NGE_TIMEOUT)
  device_printf(sc->nge_dev, "reset never completed\n");


 DELAY(1000);





 CSR_WRITE_4(sc, NGE_CLKRUN, NGE_CLKRUN_PMESTS);
 CSR_WRITE_4(sc, NGE_CLKRUN, 0);


 CSR_WRITE_4(sc, NGE_WOLCSR, 0);






 v = CSR_READ_4(sc, NGE_CFG);
 v &= ~(NGE_CFG_64BIT_ADDR_ENB | NGE_CFG_64BIT_DATA_ENB);
 CSR_WRITE_4(sc, NGE_CFG, v);
}
