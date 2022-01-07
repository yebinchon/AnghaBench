
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ae_softc_t ;


 int AE_PHY_ENABLE ;
 int AE_PHY_ENABLE_REG ;
 int AE_WRITE_4 (int *,int ,int ) ;
 int DELAY (int) ;

__attribute__((used)) static void
ae_phy_reset(ae_softc_t *sc)
{

 AE_WRITE_4(sc, AE_PHY_ENABLE_REG, AE_PHY_ENABLE);
 DELAY(1000);
}
