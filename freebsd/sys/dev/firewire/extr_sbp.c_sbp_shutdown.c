
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbp_softc {int dummy; } ;
typedef int device_t ;


 int SBP_LOCK (struct sbp_softc*) ;
 int SBP_UNLOCK (struct sbp_softc*) ;
 scalar_t__ device_get_softc (int ) ;
 int sbp_logout_all (struct sbp_softc*) ;

__attribute__((used)) static int
sbp_shutdown(device_t dev)
{
 struct sbp_softc *sbp = ((struct sbp_softc *)device_get_softc(dev));

 SBP_LOCK(sbp);
 sbp_logout_all(sbp);
 SBP_UNLOCK(sbp);
 return (0);
}
