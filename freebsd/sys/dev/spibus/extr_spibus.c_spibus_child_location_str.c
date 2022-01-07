
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spibus_ivar {int cs; } ;
typedef int device_t ;


 int SPIBUS_CS_HIGH ;
 struct spibus_ivar* SPIBUS_IVAR (int ) ;
 int device_get_unit (int ) ;
 int snprintf (char*,size_t,char*,int,int) ;

__attribute__((used)) static int
spibus_child_location_str(device_t bus, device_t child, char *buf,
    size_t buflen)
{
 struct spibus_ivar *devi = SPIBUS_IVAR(child);
 int cs;

 cs = devi->cs & ~SPIBUS_CS_HIGH;
 snprintf(buf, buflen, "bus=%d cs=%d", device_get_unit(bus), cs);
 return (0);
}
