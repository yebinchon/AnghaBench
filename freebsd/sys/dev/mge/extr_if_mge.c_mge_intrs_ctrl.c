
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mge_softc {int dummy; } ;


 int MGE_INT_CAUSE ;
 int MGE_INT_MASK ;
 int MGE_PORT_INT_CAUSE ;
 int MGE_PORT_INT_CAUSE_EXT ;
 int MGE_PORT_INT_EXTEND ;
 int MGE_PORT_INT_EXT_RXOR ;
 int MGE_PORT_INT_EXT_TXBUF0 ;
 int MGE_PORT_INT_EXT_TXERR0 ;
 int MGE_PORT_INT_EXT_TXUR ;
 int MGE_PORT_INT_MASK ;
 int MGE_PORT_INT_MASK_EXT ;
 int MGE_PORT_INT_RXERRQ0 ;
 int MGE_PORT_INT_RXQ0 ;
 int MGE_WRITE (struct mge_softc*,int ,int) ;

__attribute__((used)) static void
mge_intrs_ctrl(struct mge_softc *sc, int enable)
{

 if (enable) {
  MGE_WRITE(sc, MGE_PORT_INT_MASK , MGE_PORT_INT_RXQ0 |
      MGE_PORT_INT_EXTEND | MGE_PORT_INT_RXERRQ0);
  MGE_WRITE(sc, MGE_PORT_INT_MASK_EXT , MGE_PORT_INT_EXT_TXERR0 |
      MGE_PORT_INT_EXT_RXOR | MGE_PORT_INT_EXT_TXUR |
      MGE_PORT_INT_EXT_TXBUF0);
 } else {
  MGE_WRITE(sc, MGE_INT_CAUSE, 0x0);
  MGE_WRITE(sc, MGE_INT_MASK, 0x0);

  MGE_WRITE(sc, MGE_PORT_INT_CAUSE, 0x0);
  MGE_WRITE(sc, MGE_PORT_INT_CAUSE_EXT, 0x0);

  MGE_WRITE(sc, MGE_PORT_INT_MASK, 0x0);
  MGE_WRITE(sc, MGE_PORT_INT_MASK_EXT, 0x0);
 }
}
