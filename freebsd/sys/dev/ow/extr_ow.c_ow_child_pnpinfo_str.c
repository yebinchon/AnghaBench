
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ow_devinfo {int romid; } ;
typedef int device_t ;


 struct ow_devinfo* device_get_ivars (int ) ;
 int snprintf (char*,size_t,char*,int *,char*) ;

__attribute__((used)) static int
ow_child_pnpinfo_str(device_t dev, device_t child, char *buf,
    size_t buflen)
{
 struct ow_devinfo *di;

 di = device_get_ivars(child);
 snprintf(buf, buflen, "romid=%8D", &di->romid, ":");
 return (0);
}
