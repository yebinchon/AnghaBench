
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct terasic_mtl_softc {int mtl_reg_res; int mtl_reg_rid; int mtl_pixel_res; int mtl_pixel_rid; int mtl_text_res; int mtl_text_rid; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int ) ;
 struct terasic_mtl_softc* device_get_softc (int ) ;
 int terasic_mtl_detach (struct terasic_mtl_softc*) ;

__attribute__((used)) static int
terasic_mtl_nexus_detach(device_t dev)
{
 struct terasic_mtl_softc *sc;

 sc = device_get_softc(dev);
 terasic_mtl_detach(sc);
 bus_release_resource(dev, SYS_RES_MEMORY, sc->mtl_text_rid,
     sc->mtl_text_res);
 bus_release_resource(dev, SYS_RES_MEMORY, sc->mtl_pixel_rid,
     sc->mtl_pixel_res);
 bus_release_resource(dev, SYS_RES_MEMORY, sc->mtl_reg_rid,
     sc->mtl_reg_res);
 return (0);
}
