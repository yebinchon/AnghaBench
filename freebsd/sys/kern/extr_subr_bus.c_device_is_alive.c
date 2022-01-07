
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
struct TYPE_3__ {scalar_t__ state; } ;


 scalar_t__ DS_ALIVE ;

int
device_is_alive(device_t dev)
{
 return (dev->state >= DS_ALIVE);
}
