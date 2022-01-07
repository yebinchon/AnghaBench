
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct terasic_mtl_softc {int dummy; } ;


 int terasic_mtl_fbd_detach (struct terasic_mtl_softc*) ;
 int terasic_mtl_pixel_detach (struct terasic_mtl_softc*) ;
 int terasic_mtl_reg_detach (struct terasic_mtl_softc*) ;
 int terasic_mtl_syscons_detach (struct terasic_mtl_softc*) ;
 int terasic_mtl_text_detach (struct terasic_mtl_softc*) ;

void
terasic_mtl_detach(struct terasic_mtl_softc *sc)
{
 terasic_mtl_text_detach(sc);
 terasic_mtl_pixel_detach(sc);
 terasic_mtl_reg_detach(sc);
}
