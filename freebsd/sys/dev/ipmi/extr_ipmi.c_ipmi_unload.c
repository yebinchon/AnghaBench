
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int M_TEMP ;
 scalar_t__ devclass_get_devices (int *,int **,int*) ;
 int device_delete_child (int ,int ) ;
 int device_get_parent (int ) ;
 int free (int *,int ) ;
 int * ipmi_devclass ;

__attribute__((used)) static void
ipmi_unload(void *arg)
{
 device_t * devs;
 int count;
 int i;

 if (ipmi_devclass == ((void*)0))
  return;
 if (devclass_get_devices(ipmi_devclass, &devs, &count) != 0)
  return;
 for (i = 0; i < count; i++)
  device_delete_child(device_get_parent(devs[i]), devs[i]);
 free(devs, M_TEMP);
}
