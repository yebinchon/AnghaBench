
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mps_softc {int * mps_cdev; } ;


 int destroy_dev (int *) ;

void
mps_detach_user(struct mps_softc *sc)
{


 if (sc->mps_cdev != ((void*)0))
  destroy_dev(sc->mps_cdev);
}
