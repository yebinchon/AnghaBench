
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;
struct terasic_mtl_softc {int dummy; } ;


 int terasic_mtl_reg_textcursor_set (struct terasic_mtl_softc*,int,int) ;

__attribute__((used)) static int
terasic_mtl_vidsw_set_hw_cursor(video_adapter_t *adp, int col, int row)
{
 struct terasic_mtl_softc *sc;

 sc = (struct terasic_mtl_softc *)adp;
 terasic_mtl_reg_textcursor_set(sc, col, row);
 return (0);
}
