
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
typedef int device_state_t ;
struct TYPE_3__ {int state; } ;



device_state_t
device_get_state(device_t dev)
{
 return (dev->state);
}
