
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int device_t ;


 int * BUS_ADD_CHILD (int ,int ,char*,int ) ;
 int panic (char*) ;
 scalar_t__ resource_disabled (char*,int ) ;

__attribute__((used)) static void
ram_identify(driver_t *driver, device_t parent)
{

 if (resource_disabled("ram", 0))
  return;
 if (BUS_ADD_CHILD(parent, 0, "ram", 0) == ((void*)0))
  panic("ram_identify");
}
