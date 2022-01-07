
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_devinfo {size_t default_address; int address; } ;
typedef int device_t ;


 int * adb_device_string ;
 scalar_t__ bootverbose ;
 struct adb_devinfo* device_get_ivars (int ) ;
 int device_printf (int ,char*,int ,int ) ;

__attribute__((used)) static void
adb_probe_nomatch(device_t dev, device_t child)
{
 struct adb_devinfo *dinfo;

 if (bootverbose) {
  dinfo = device_get_ivars(child);

  device_printf(dev,"ADB %s at device %d (no driver attached)\n",
      adb_device_string[dinfo->default_address],dinfo->address);
 }
}
