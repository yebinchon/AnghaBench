
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpr_softc {int * mpr_cdev; } ;


 int destroy_dev (int *) ;

void
mpr_detach_user(struct mpr_softc *sc)
{


 if (sc->mpr_cdev != ((void*)0))
  destroy_dev(sc->mpr_cdev);
}
