
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct terasic_mtl_softc {int * mtl_reg_cdev; } ;


 int destroy_dev (int *) ;

void
terasic_mtl_reg_detach(struct terasic_mtl_softc *sc)
{

 if (sc->mtl_reg_cdev != ((void*)0))
  destroy_dev(sc->mtl_reg_cdev);
}
