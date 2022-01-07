
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int dummy; } ;


 int bxe_acquire_phy_lock (struct bxe_softc*) ;
 int bxe_link_report_locked (struct bxe_softc*) ;
 int bxe_release_phy_lock (struct bxe_softc*) ;

__attribute__((used)) static void
bxe_link_report(struct bxe_softc *sc)
{
    bxe_acquire_phy_lock(sc);
    bxe_link_report_locked(sc);
    bxe_release_phy_lock(sc);
}
