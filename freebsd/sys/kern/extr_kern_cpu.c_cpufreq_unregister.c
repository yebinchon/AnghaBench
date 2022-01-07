
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * device_t ;


 scalar_t__ CPUFREQ_DRV_TYPE (int *,int*) ;
 int M_TEMP ;
 int device_delete_child (int ,int *) ;
 int * device_find_child (int ,char*,int) ;
 int device_get_children (int ,int ***,int*) ;
 int device_get_parent (int *) ;
 int device_is_attached (int *) ;
 int device_printf (int *,char*) ;
 int free (int **,int ) ;

int
cpufreq_unregister(device_t dev)
{
 device_t cf_dev, *devs;
 int cfcount, devcount, error, i, type;






 error = device_get_children(device_get_parent(dev), &devs, &devcount);
 if (error)
  return (error);
 cf_dev = device_find_child(device_get_parent(dev), "cpufreq", -1);
 if (cf_dev == ((void*)0)) {
  device_printf(dev,
 "warning: cpufreq_unregister called with no cpufreq device active\n");
  free(devs, M_TEMP);
  return (0);
 }
 cfcount = 0;
 for (i = 0; i < devcount; i++) {
  if (!device_is_attached(devs[i]))
   continue;
  if (CPUFREQ_DRV_TYPE(devs[i], &type) == 0)
   cfcount++;
 }
 if (cfcount <= 1)
  device_delete_child(device_get_parent(cf_dev), cf_dev);
 free(devs, M_TEMP);

 return (0);
}
