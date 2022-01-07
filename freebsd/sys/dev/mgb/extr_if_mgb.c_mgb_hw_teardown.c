
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgb_softc {int dummy; } ;


 int CSR_CLEAR_REG (struct mgb_softc*,int ,int ) ;
 int CSR_WRITE_REG (struct mgb_softc*,int ,int ) ;
 int MGB_MAC_DSBL ;
 int MGB_MAC_ENBL ;
 int MGB_MAC_RX ;
 int MGB_MAC_TX ;
 int mgb_wait_for_bits (struct mgb_softc*,int ,int ,int ) ;

__attribute__((used)) static int
mgb_hw_teardown(struct mgb_softc *sc)
{
 int err = 0;


 CSR_CLEAR_REG(sc, MGB_MAC_RX, MGB_MAC_ENBL);
 CSR_WRITE_REG(sc, MGB_MAC_TX, MGB_MAC_ENBL);
 if ((err = mgb_wait_for_bits(sc, MGB_MAC_RX, MGB_MAC_DSBL, 0)))
  return (err);
 if ((err = mgb_wait_for_bits(sc, MGB_MAC_TX, MGB_MAC_DSBL, 0)))
  return (err);
 return (err);
}
