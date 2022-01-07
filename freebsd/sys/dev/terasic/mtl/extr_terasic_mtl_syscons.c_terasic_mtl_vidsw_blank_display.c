
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;
struct terasic_mtl_softc {int dummy; } ;


 int terasic_mtl_reg_blank (struct terasic_mtl_softc*) ;

__attribute__((used)) static int
terasic_mtl_vidsw_blank_display(video_adapter_t *adp, int mode)
{
 struct terasic_mtl_softc *sc;

 sc = (struct terasic_mtl_softc *)adp;
 terasic_mtl_reg_blank(sc);
 return (0);
}
