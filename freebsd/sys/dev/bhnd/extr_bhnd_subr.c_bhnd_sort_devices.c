
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int bhnd_device_order ;




 int EINVAL ;
 int compare_ascending_probe_order (void const*,void const*) ;
 int compare_descending_probe_order (void const*,void const*) ;
 int printf (char*,int) ;
 int qsort (int *,size_t,int,int (*) (void const*,void const*)) ;

int
bhnd_sort_devices(device_t *devlist, size_t devcount, bhnd_device_order order)
{
 int (*compare)(const void *, const void *);

 switch (order) {
 case 129:
  compare = compare_ascending_probe_order;
  break;
 case 128:
  compare = compare_descending_probe_order;
  break;
 default:
  printf("unknown sort order: %d\n", order);
  return (EINVAL);
 }

 qsort(devlist, devcount, sizeof(*devlist), compare);
 return (0);
}
