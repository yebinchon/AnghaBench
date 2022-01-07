
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int driverlink_t ;
typedef TYPE_2__* device_t ;
typedef TYPE_3__* devclass_t ;
struct TYPE_9__ {int drivers; } ;
struct TYPE_8__ {TYPE_1__* devclass; } ;
struct TYPE_7__ {int name; } ;


 int TAILQ_FIRST (int *) ;
 int devclass_find_driver_internal (TYPE_3__*,int ) ;

__attribute__((used)) static driverlink_t
first_matching_driver(devclass_t dc, device_t dev)
{
 if (dev->devclass)
  return (devclass_find_driver_internal(dc, dev->devclass->name));
 return (TAILQ_FIRST(&dc->drivers));
}
