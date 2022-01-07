
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int * device_t ;


 scalar_t__ amdtemp_match (int *,int *) ;
 int * device_add_child (int *,char*,int) ;
 int * device_find_child (int *,char*,int) ;
 int device_printf (int *,char*) ;

__attribute__((used)) static void
amdtemp_identify(driver_t *driver, device_t parent)
{
 device_t child;


 if (device_find_child(parent, "amdtemp", -1) != ((void*)0))
  return;

 if (amdtemp_match(parent, ((void*)0))) {
  child = device_add_child(parent, "amdtemp", -1);
  if (child == ((void*)0))
   device_printf(parent, "add amdtemp child failed\n");
 }
}
