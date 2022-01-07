
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpr_softc {TYPE_1__* mpr_cdev; int mpr_dev; } ;
struct TYPE_2__ {struct mpr_softc* si_drv1; } ;


 int ENOMEM ;
 int GID_OPERATOR ;
 int UID_ROOT ;
 int device_get_unit (int ) ;
 TYPE_1__* make_dev (int *,int,int ,int ,int,char*,int) ;
 int mpr_cdevsw ;

int
mpr_attach_user(struct mpr_softc *sc)
{
 int unit;

 unit = device_get_unit(sc->mpr_dev);
 sc->mpr_cdev = make_dev(&mpr_cdevsw, unit, UID_ROOT, GID_OPERATOR, 0640,
     "mpr%d", unit);

 if (sc->mpr_cdev == ((void*)0))
  return (ENOMEM);

 sc->mpr_cdev->si_drv1 = sc;
 return (0);
}
