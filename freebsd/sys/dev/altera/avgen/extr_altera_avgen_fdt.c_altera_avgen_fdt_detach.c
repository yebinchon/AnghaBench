
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altera_avgen_softc {int avg_res; int avg_rid; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int altera_avgen_detach (struct altera_avgen_softc*) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 struct altera_avgen_softc* device_get_softc (int ) ;

__attribute__((used)) static int
altera_avgen_fdt_detach(device_t dev)
{
 struct altera_avgen_softc *sc;

 sc = device_get_softc(dev);
 altera_avgen_detach(sc);
 bus_release_resource(dev, SYS_RES_MEMORY, sc->avg_rid, sc->avg_res);
 return (0);
}
