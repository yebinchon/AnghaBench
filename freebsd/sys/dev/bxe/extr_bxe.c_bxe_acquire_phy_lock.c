
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int dummy; } ;


 int BXE_PHY_LOCK (struct bxe_softc*) ;
 int HW_LOCK_RESOURCE_MDIO ;
 int bxe_acquire_hw_lock (struct bxe_softc*,int ) ;

__attribute__((used)) static void bxe_acquire_phy_lock(struct bxe_softc *sc)
{
 BXE_PHY_LOCK(sc);
 bxe_acquire_hw_lock(sc,HW_LOCK_RESOURCE_MDIO);
}
