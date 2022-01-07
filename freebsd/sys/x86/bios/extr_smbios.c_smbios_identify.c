
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef scalar_t__ u_int32_t ;
typedef int driver_t ;
typedef int device_t ;
struct TYPE_2__ {int length; int major_version; int minor_version; } ;


 TYPE_1__* ADDR2EPS (scalar_t__) ;
 int BUS_ADD_CHILD (int ,int,char*,int) ;
 int SMBIOS_LEN ;
 int SMBIOS_OFF ;
 int SMBIOS_SIG ;
 int SMBIOS_START ;
 int SMBIOS_STEP ;
 int SYS_RES_MEMORY ;
 scalar_t__ bios_sigsearch (int ,int ,int ,int ,int ) ;
 int bus_set_resource (int ,int ,int,scalar_t__,int) ;
 int device_is_alive (int ) ;
 int device_set_desc (int ,char*) ;
 int device_set_driver (int ,int *) ;

__attribute__((used)) static void
smbios_identify (driver_t *driver, device_t parent)
{
 device_t child;
 u_int32_t addr;
 int length;
 int rid;

 if (!device_is_alive(parent))
  return;

 addr = bios_sigsearch(SMBIOS_START, SMBIOS_SIG, SMBIOS_LEN,
         SMBIOS_STEP, SMBIOS_OFF);
 if (addr != 0) {
  rid = 0;
  length = ADDR2EPS(addr)->length;

  if (length != 0x1f) {
   u_int8_t major, minor;

   major = ADDR2EPS(addr)->major_version;
   minor = ADDR2EPS(addr)->minor_version;


   if (length == 0x1e && major == 2 && minor == 1)
    length = 0x1f;
   else
    return;
  }

  child = BUS_ADD_CHILD(parent, 5, "smbios", -1);
  device_set_driver(child, driver);
  bus_set_resource(child, SYS_RES_MEMORY, rid, addr, length);
  device_set_desc(child, "System Management BIOS");
 }

 return;
}
