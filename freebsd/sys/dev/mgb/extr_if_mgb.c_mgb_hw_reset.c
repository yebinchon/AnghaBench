
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgb_softc {int dummy; } ;


 int CSR_UPDATE_REG (struct mgb_softc*,int ,int ) ;
 int MGB_HW_CFG ;
 int MGB_LITE_RESET ;
 int mgb_wait_for_bits (struct mgb_softc*,int ,int ,int ) ;

__attribute__((used)) static int
mgb_hw_reset(struct mgb_softc *sc)
{

 CSR_UPDATE_REG(sc, MGB_HW_CFG, MGB_LITE_RESET);
 return (mgb_wait_for_bits(sc, MGB_HW_CFG, 0, MGB_LITE_RESET));
}
