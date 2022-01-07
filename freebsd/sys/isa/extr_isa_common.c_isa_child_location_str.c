
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isa_device {int id_pnphandle; scalar_t__ id_vendorid; } ;
typedef int device_t ;


 struct isa_device* DEVTOISA (int ) ;
 int snprintf (char*,size_t,char*,int) ;

__attribute__((used)) static int
isa_child_location_str(device_t bus, device_t child, char *buf,
    size_t buflen)
{
 *buf = '\0';
 return (0);
}
