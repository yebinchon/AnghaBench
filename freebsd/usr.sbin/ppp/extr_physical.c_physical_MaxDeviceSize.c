
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {unsigned int (* DeviceSize ) () ;} ;


 unsigned int NDEVICES ;
 TYPE_1__* devices ;
 unsigned int stub1 () ;

unsigned
physical_MaxDeviceSize()
{
  unsigned biggest, sz, n;

  biggest = sizeof(struct device);
  for (n = 0; n < NDEVICES; n++)
    if (devices[n].DeviceSize) {
      sz = (*devices[n].DeviceSize)();
      if (biggest < sz)
        biggest = sz;
    }

  return biggest;
}
