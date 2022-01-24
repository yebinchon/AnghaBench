#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct TYPE_2__ {unsigned int (* DeviceSize ) () ;} ;

/* Variables and functions */
 unsigned int NDEVICES ; 
 TYPE_1__* devices ; 
 unsigned int FUNC0 () ; 

unsigned
FUNC1()
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