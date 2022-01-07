
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * device_t ;


 int M_TEMP ;
 int agp_devclass ;
 scalar_t__ devclass_get_devices (int ,int ***,int*) ;
 scalar_t__ device_is_attached (int *) ;
 int free (int **,int ) ;

device_t
agp_find_device()
{
 device_t *children, child;
 int i, count;

 if (!agp_devclass)
  return ((void*)0);
 if (devclass_get_devices(agp_devclass, &children, &count) != 0)
  return ((void*)0);
 child = ((void*)0);
 for (i = 0; i < count; i++) {
  if (device_is_attached(children[i])) {
   child = children[i];
   break;
  }
 }
 free(children, M_TEMP);
 return child;
}
