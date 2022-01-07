
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jme_softc {int jme_flags; } ;


 int CSR_READ_4 (struct jme_softc*,int ) ;
 int CSR_WRITE_4 (struct jme_softc*,int ,int) ;
 int DELAY (int) ;
 int GHC_RESET ;
 int GHC_TX_MAC_CLK_DIS ;
 int GPREG1_RX_MAC_CLK_DIS ;
 int JME_FLAG_RXCLK ;
 int JME_FLAG_TXCLK ;
 int JME_GHC ;
 int JME_GPREG1 ;
 int jme_stop_rx (struct jme_softc*) ;
 int jme_stop_tx (struct jme_softc*) ;

__attribute__((used)) static void
jme_reset(struct jme_softc *sc)
{
 uint32_t ghc, gpreg;


 jme_stop_rx(sc);
 jme_stop_tx(sc);


 CSR_WRITE_4(sc, JME_GHC, GHC_RESET);
 CSR_READ_4(sc, JME_GHC);
 DELAY(10);





 if ((sc->jme_flags & (JME_FLAG_TXCLK | JME_FLAG_RXCLK)) != 0) {

  CSR_WRITE_4(sc, JME_GHC, GHC_RESET | GHC_TX_MAC_CLK_DIS);

  gpreg = CSR_READ_4(sc, JME_GPREG1);
  CSR_WRITE_4(sc, JME_GPREG1, gpreg | GPREG1_RX_MAC_CLK_DIS);
  gpreg = CSR_READ_4(sc, JME_GPREG1);

  CSR_WRITE_4(sc, JME_GHC, GHC_TX_MAC_CLK_DIS);
  ghc = CSR_READ_4(sc, JME_GHC);


  CSR_WRITE_4(sc, JME_GHC, ghc & ~GHC_TX_MAC_CLK_DIS);

  CSR_WRITE_4(sc, JME_GPREG1, gpreg & ~GPREG1_RX_MAC_CLK_DIS);
  CSR_READ_4(sc, JME_GPREG1);


  CSR_WRITE_4(sc, JME_GHC, GHC_TX_MAC_CLK_DIS);
  CSR_WRITE_4(sc, JME_GPREG1, gpreg | GPREG1_RX_MAC_CLK_DIS);
 } else
  CSR_WRITE_4(sc, JME_GHC, 0);
 CSR_READ_4(sc, JME_GHC);
 DELAY(10);
}
