
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 intptr_t AHCI_EM_UNIT ;
 int AHCI_UNIT ;
 scalar_t__ device_get_ivars (int ) ;
 int snprintf (char*,size_t,char*,int) ;

int
ahci_child_location_str(device_t dev, device_t child, char *buf,
    size_t buflen)
{
 intptr_t ivars;

 ivars = (intptr_t)device_get_ivars(child);
 if ((ivars & AHCI_EM_UNIT) == 0)
  snprintf(buf, buflen, "channel=%d", (int)ivars & AHCI_UNIT);
 return (0);
}
