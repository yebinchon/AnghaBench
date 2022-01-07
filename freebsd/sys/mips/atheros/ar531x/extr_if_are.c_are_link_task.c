
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {int if_drv_flags; } ;
struct are_softc {int are_link_status; struct ifnet* are_ifp; int are_miibus; } ;


 int ARE_LOCK (struct are_softc*) ;
 int ARE_UNLOCK (struct are_softc*) ;
 int IFF_DRV_RUNNING ;
 int IFM_ACTIVE ;
 scalar_t__ IFM_NONE ;
 scalar_t__ IFM_SUBTYPE (int ) ;
 struct mii_data* device_get_softc (int ) ;

__attribute__((used)) static void
are_link_task(void *arg, int pending)
{
}
