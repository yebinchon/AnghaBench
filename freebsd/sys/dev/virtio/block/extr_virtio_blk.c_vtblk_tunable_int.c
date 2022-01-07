
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtblk_softc {int vtblk_dev; } ;
typedef int path ;


 int TUNABLE_INT_FETCH (char*,int*) ;
 int device_get_unit (int ) ;
 int snprintf (char*,int,char*,int,char const*) ;

__attribute__((used)) static int
vtblk_tunable_int(struct vtblk_softc *sc, const char *knob, int def)
{
 char path[64];

 snprintf(path, sizeof(path),
     "hw.vtblk.%d.%s", device_get_unit(sc->vtblk_dev), knob);
 TUNABLE_INT_FETCH(path, &def);

 return (def);
}
