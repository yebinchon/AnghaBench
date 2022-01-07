
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_3__* driverlink_t ;
typedef TYPE_4__* device_t ;
typedef int devclass_t ;
struct TYPE_13__ {TYPE_1__* devclass; } ;
struct TYPE_12__ {TYPE_2__* driver; } ;
struct TYPE_11__ {int name; } ;
struct TYPE_10__ {int name; } ;


 TYPE_3__* TAILQ_NEXT (TYPE_3__*,int ) ;
 int link ;
 int strcmp (int ,int ) ;

__attribute__((used)) static driverlink_t
next_matching_driver(devclass_t dc, device_t dev, driverlink_t last)
{
 if (dev->devclass) {
  driverlink_t dl;
  for (dl = TAILQ_NEXT(last, link); dl; dl = TAILQ_NEXT(dl, link))
   if (!strcmp(dev->devclass->name, dl->driver->name))
    return (dl);
  return (((void*)0));
 }
 return (TAILQ_NEXT(last, link));
}
