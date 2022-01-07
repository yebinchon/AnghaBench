
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;
typedef int device_t ;




 int M_TEMP ;
 int devclass_get_devices (int ,int **,int*) ;
 int device_delete_child (int ,int ) ;
 int device_get_parent (int ) ;
 int free (int *,int ) ;
 int smapi_devclass ;

__attribute__((used)) static int
smapi_modevent (module_t mod, int what, void *arg)
{
 device_t * devs;
 int count;
 int i;

 switch (what) {
 case 129:
  break;
 case 128:
  devclass_get_devices(smapi_devclass, &devs, &count);
  for (i = 0; i < count; i++) {
   device_delete_child(device_get_parent(devs[i]), devs[i]);
  }
  free(devs, M_TEMP);
  break;
 default:
  break;
 }

 return (0);
}
