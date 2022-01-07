
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int * device_t ;


 int amdsmn_match (int *,int *) ;
 int * device_add_child (int *,char*,int) ;
 int * device_find_child (int *,char*,int) ;
 int device_printf (int *,char*) ;

__attribute__((used)) static void
amdsmn_identify(driver_t *driver, device_t parent)
{
 device_t child;


 if (device_find_child(parent, "amdsmn", -1) != ((void*)0))
  return;
 if (!amdsmn_match(parent, ((void*)0)))
  return;

 child = device_add_child(parent, "amdsmn", -1);
 if (child == ((void*)0))
  device_printf(parent, "add amdsmn child failed\n");
}
