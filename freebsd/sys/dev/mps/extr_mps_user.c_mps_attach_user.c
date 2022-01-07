
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mps_softc {TYPE_1__* mps_cdev; int mps_dev; } ;
struct TYPE_2__ {struct mps_softc* si_drv1; } ;


 int ENOMEM ;
 int GID_OPERATOR ;
 int UID_ROOT ;
 int device_get_unit (int ) ;
 TYPE_1__* make_dev (int *,int,int ,int ,int,char*,int) ;
 int mps_cdevsw ;

int
mps_attach_user(struct mps_softc *sc)
{
 int unit;

 unit = device_get_unit(sc->mps_dev);
 sc->mps_cdev = make_dev(&mps_cdevsw, unit, UID_ROOT, GID_OPERATOR, 0640,
     "mps%d", unit);
 if (sc->mps_cdev == ((void*)0)) {
  return (ENOMEM);
 }
 sc->mps_cdev->si_drv1 = sc;
 return (0);
}
