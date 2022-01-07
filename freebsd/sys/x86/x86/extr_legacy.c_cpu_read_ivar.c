
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_device {int cd_pcpu; } ;
typedef int device_t ;




 int ENOENT ;
 int atomic_load_acq_64 (int *) ;
 struct cpu_device* device_get_ivars (int ) ;
 int tsc_freq ;
 int tsc_is_invariant ;

__attribute__((used)) static int
cpu_read_ivar(device_t dev, device_t child, int index, uintptr_t *result)
{
 struct cpu_device *cpdev;

 switch (index) {
 case 128:
  cpdev = device_get_ivars(child);
  *result = (uintptr_t)cpdev->cd_pcpu;
  break;
 case 129:
  if (tsc_is_invariant) {
   *result = (uintptr_t)(atomic_load_acq_64(&tsc_freq) /
       1000000);
   break;
  }

 default:
  return (ENOENT);
 }
 return (0);
}
