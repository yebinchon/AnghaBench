
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
struct TYPE_3__ {int flags; } ;


 int DF_QUIET ;

int
device_is_quiet(device_t dev)
{
 return ((dev->flags & DF_QUIET) != 0);
}
