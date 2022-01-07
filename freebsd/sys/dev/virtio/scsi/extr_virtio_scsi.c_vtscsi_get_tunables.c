
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmpstr ;
struct vtscsi_softc {int vtscsi_debug; int vtscsi_dev; } ;


 int TUNABLE_INT_FETCH (char*,int *) ;
 int device_get_unit (int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
vtscsi_get_tunables(struct vtscsi_softc *sc)
{
 char tmpstr[64];

 TUNABLE_INT_FETCH("hw.vtscsi.debug_level", &sc->vtscsi_debug);

 snprintf(tmpstr, sizeof(tmpstr), "dev.vtscsi.%d.debug_level",
     device_get_unit(sc->vtscsi_dev));
 TUNABLE_INT_FETCH(tmpstr, &sc->vtscsi_debug);
}
