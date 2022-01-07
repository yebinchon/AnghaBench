
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isa_device {scalar_t__ id_vendorid; } ;
typedef int device_t ;


 struct isa_device* DEVTOISA (int ) ;
 char* pnp_eisaformat (scalar_t__) ;
 int snprintf (char*,size_t,char*,char*) ;

__attribute__((used)) static int
isa_child_pnpinfo_str(device_t bus, device_t child, char *buf,
    size_t buflen)
{
 struct isa_device *idev = DEVTOISA(child);

 if (idev->id_vendorid)
  snprintf(buf, buflen, "pnpid=%s",
      pnp_eisaformat(idev->id_vendorid));
 return (0);
}
