
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct terasic_mtl_softc {int dummy; } ;


 scalar_t__ BIG_ENDIAN ;
 scalar_t__ BYTE_ORDER ;
 int TERASIC_MTL_ALPHA_OPAQUE ;
 int TERASIC_MTL_ALPHA_TRANSPARENT ;
 int TERASIC_MTL_COLOR_BLACK ;
 int terasic_mtl_blend_default_set (struct terasic_mtl_softc*,int ) ;
 int terasic_mtl_blend_pixel_set (struct terasic_mtl_softc*,int ) ;
 int terasic_mtl_blend_textbg_set (struct terasic_mtl_softc*,int ) ;
 int terasic_mtl_blend_textfg_set (struct terasic_mtl_softc*,int ) ;
 int terasic_mtl_fbd_attach (struct terasic_mtl_softc*) ;
 int terasic_mtl_pixel_attach (struct terasic_mtl_softc*) ;
 int terasic_mtl_pixel_detach (struct terasic_mtl_softc*) ;
 int terasic_mtl_reg_attach (struct terasic_mtl_softc*) ;
 int terasic_mtl_reg_detach (struct terasic_mtl_softc*) ;
 int terasic_mtl_reg_pixel_endian_set (struct terasic_mtl_softc*,int) ;
 int terasic_mtl_syscons_attach (struct terasic_mtl_softc*) ;
 int terasic_mtl_text_attach (struct terasic_mtl_softc*) ;
 int terasic_mtl_text_detach (struct terasic_mtl_softc*) ;

int
terasic_mtl_attach(struct terasic_mtl_softc *sc)
{
 int error;

 error = terasic_mtl_reg_attach(sc);
 if (error)
  goto error;
 error = terasic_mtl_pixel_attach(sc);
 if (error)
  goto error;
 error = terasic_mtl_text_attach(sc);
 if (error)
  goto error;
 terasic_mtl_blend_default_set(sc, TERASIC_MTL_COLOR_BLACK);
 return (0);
error:
 terasic_mtl_text_detach(sc);
 terasic_mtl_pixel_detach(sc);
 terasic_mtl_reg_detach(sc);
 return (error);
}
