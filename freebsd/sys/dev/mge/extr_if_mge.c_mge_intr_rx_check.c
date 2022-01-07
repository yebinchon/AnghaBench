
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mge_softc {int dummy; } ;


 int MGE_PORT_INT_CAUSE ;
 int MGE_PORT_INT_CAUSE_EXT ;
 int MGE_PORT_INT_EXT_RXOR ;
 int MGE_PORT_INT_RXERRQ0 ;
 int MGE_PORT_INT_RXQ0 ;
 int MGE_WRITE (struct mge_softc*,int ,int) ;
 int mge_intr_rx_locked (struct mge_softc*,int) ;
 int mge_reinit_rx (struct mge_softc*) ;

__attribute__((used)) static void
mge_intr_rx_check(struct mge_softc *sc, uint32_t int_cause,
    uint32_t int_cause_ext)
{

 if (int_cause & MGE_PORT_INT_RXERRQ0) {
  mge_reinit_rx(sc);
  MGE_WRITE(sc, MGE_PORT_INT_CAUSE,
      ~(int_cause & MGE_PORT_INT_RXERRQ0));
 }

 int_cause &= MGE_PORT_INT_RXQ0;
 int_cause_ext &= MGE_PORT_INT_EXT_RXOR;

 if (int_cause || int_cause_ext) {
  MGE_WRITE(sc, MGE_PORT_INT_CAUSE, ~int_cause);
  MGE_WRITE(sc, MGE_PORT_INT_CAUSE_EXT, ~int_cause_ext);
  mge_intr_rx_locked(sc, -1);
 }
}
