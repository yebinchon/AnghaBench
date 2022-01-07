
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvscsi_softc {int dev; } ;
typedef int cfg ;


 int TUNABLE_INT_FETCH (char*,int*) ;
 int device_get_unit (int ) ;
 int snprintf (char*,int,char*,int,char*) ;

__attribute__((used)) static int pvscsi_get_tunable(struct pvscsi_softc *sc, char *name, int value)
{
 char cfg[64];

 snprintf(cfg, sizeof(cfg), "hw.pvscsi.%d.%s", device_get_unit(sc->dev),
     name);
 TUNABLE_INT_FETCH(cfg, &value);

 return (value);
}
