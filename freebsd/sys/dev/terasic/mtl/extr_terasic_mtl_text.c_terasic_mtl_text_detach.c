
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct terasic_mtl_softc {int * mtl_text_cdev; } ;


 int TERASIC_MTL_LOCK_DESTROY (struct terasic_mtl_softc*) ;
 int destroy_dev (int *) ;

void
terasic_mtl_text_detach(struct terasic_mtl_softc *sc)
{

 if (sc->mtl_text_cdev != ((void*)0)) {
  destroy_dev(sc->mtl_text_cdev);
  TERASIC_MTL_LOCK_DESTROY(sc);
 }
}
