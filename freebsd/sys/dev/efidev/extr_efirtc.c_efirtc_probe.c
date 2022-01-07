
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efi_tm {int dummy; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int) ;
 int device_set_desc (int ,char*) ;
 int efi_get_time (struct efi_tm*) ;

__attribute__((used)) static int
efirtc_probe(device_t dev)
{
 struct efi_tm tm;
 int error;






 if ((error = efi_get_time(&tm)) != 0) {
  if (bootverbose)
   device_printf(dev, "cannot read EFI realtime clock, "
       "error %d\n", error);
  return (error);
 }
 device_set_desc(dev, "EFI Realtime Clock");
 return (BUS_PROBE_DEFAULT);
}
