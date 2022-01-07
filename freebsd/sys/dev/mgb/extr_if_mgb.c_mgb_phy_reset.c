
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgb_softc {int dummy; } ;


 int CSR_UPDATE_BYTE (struct mgb_softc*,int ,int ) ;
 int MGB_PHY_READY ;
 int MGB_PHY_RESET ;
 int MGB_PMT_CTL ;
 scalar_t__ MGB_STS_TIMEOUT ;
 int mgb_wait_for_bits (struct mgb_softc*,int ,int ,int ) ;

__attribute__((used)) static int
mgb_phy_reset(struct mgb_softc *sc)
{

 CSR_UPDATE_BYTE(sc, MGB_PMT_CTL, MGB_PHY_RESET);
 if (mgb_wait_for_bits(sc, MGB_PMT_CTL, 0, MGB_PHY_RESET) ==
     MGB_STS_TIMEOUT)
  return MGB_STS_TIMEOUT;
 return (mgb_wait_for_bits(sc, MGB_PMT_CTL, MGB_PHY_READY, 0));
}
