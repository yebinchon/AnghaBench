
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
typedef int driver_t ;
typedef int device_t ;
struct TYPE_2__ {int Length; } ;


 TYPE_1__* ADDR2VPD (scalar_t__) ;
 int BUS_ADD_CHILD (int ,int,char*,int) ;
 int SYS_RES_MEMORY ;
 int VPD_LEN ;
 int VPD_OFF ;
 int VPD_SIG ;
 int VPD_START ;
 int VPD_STEP ;
 scalar_t__ bios_sigsearch (int ,int ,int ,int ,int ) ;
 int bus_set_resource (int ,int ,int,scalar_t__,int) ;
 int device_is_alive (int ) ;
 int device_set_desc (int ,char*) ;
 int device_set_driver (int ,int *) ;

__attribute__((used)) static void
vpd_identify (driver_t *driver, device_t parent)
{
 device_t child;
 u_int32_t addr;
 int length;
 int rid;

 if (!device_is_alive(parent))
  return;

 addr = bios_sigsearch(VPD_START, VPD_SIG, VPD_LEN, VPD_STEP, VPD_OFF);
 if (addr != 0) {
  rid = 0;
  length = ADDR2VPD(addr)->Length;

  child = BUS_ADD_CHILD(parent, 5, "vpd", -1);
  device_set_driver(child, driver);
  bus_set_resource(child, SYS_RES_MEMORY, rid, addr, length);
  device_set_desc(child, "Vital Product Data Area");
 }

 return;
}
