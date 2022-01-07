
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ enum_addr; } ;
struct bhndb_softc {TYPE_1__ chipid; } ;
typedef int device_t ;


 struct bhndb_softc* device_get_softc (int ) ;
 int snprintf (char*,size_t,char*,unsigned long long) ;

__attribute__((used)) static int
bhndb_child_location_str(device_t dev, device_t child, char *buf,
    size_t buflen)
{
 struct bhndb_softc *sc;

 sc = device_get_softc(dev);

 snprintf(buf, buflen, "base=0x%llx",
     (unsigned long long) sc->chipid.enum_addr);
 return (0);
}
