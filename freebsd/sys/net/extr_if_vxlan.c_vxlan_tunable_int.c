
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_softc {int vxl_unit; } ;
typedef int path ;


 int TUNABLE_INT_FETCH (char*,int*) ;
 int snprintf (char*,int,char*,int,char const*) ;

__attribute__((used)) static int
vxlan_tunable_int(struct vxlan_softc *sc, const char *knob, int def)
{
 char path[64];

 snprintf(path, sizeof(path), "net.link.vxlan.%d.%s",
     sc->vxl_unit, knob);
 TUNABLE_INT_FETCH(path, &def);

 return (def);
}
