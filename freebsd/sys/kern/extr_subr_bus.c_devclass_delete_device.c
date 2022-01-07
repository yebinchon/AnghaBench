
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
typedef TYPE_2__* devclass_t ;
struct TYPE_8__ {TYPE_1__** devices; } ;
struct TYPE_7__ {size_t unit; int flags; int * nameunit; TYPE_2__* devclass; } ;


 int DEVCLANAME (TYPE_2__*) ;
 int DEVICENAME (TYPE_1__*) ;
 int DF_WILDCARD ;
 int M_BUS ;
 int PDEBUG (char*) ;
 int free (int *,int ) ;
 int panic (char*) ;

__attribute__((used)) static int
devclass_delete_device(devclass_t dc, device_t dev)
{
 if (!dc || !dev)
  return (0);

 PDEBUG(("%s in devclass %s", DEVICENAME(dev), DEVCLANAME(dc)));

 if (dev->devclass != dc || dc->devices[dev->unit] != dev)
  panic("devclass_delete_device: inconsistent device class");
 dc->devices[dev->unit] = ((void*)0);
 if (dev->flags & DF_WILDCARD)
  dev->unit = -1;
 dev->devclass = ((void*)0);
 free(dev->nameunit, M_BUS);
 dev->nameunit = ((void*)0);

 return (0);
}
