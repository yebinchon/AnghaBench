
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int * device_t ;


 int * BUS_ADD_CHILD (int *,int ,char*,int ) ;
 int cold ;
 int panic (char*) ;
 int printf (char*) ;
 scalar_t__ resource_disabled (char*,int ) ;

__attribute__((used)) static void
apm_identify(driver_t *driver, device_t parent)
{
 device_t child;

 if (!cold) {
  printf("Don't load this driver from userland!!\n");
  return;
 }

 if (resource_disabled("apm", 0))
  return;

 child = BUS_ADD_CHILD(parent, 0, "apm", 0);
 if (child == ((void*)0))
  panic("apm_identify");
}
