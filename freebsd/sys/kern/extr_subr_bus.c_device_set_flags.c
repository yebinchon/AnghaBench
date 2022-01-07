
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* device_t ;
struct TYPE_3__ {int devflags; } ;



void
device_set_flags(device_t dev, uint32_t flags)
{
 dev->devflags = flags;
}
