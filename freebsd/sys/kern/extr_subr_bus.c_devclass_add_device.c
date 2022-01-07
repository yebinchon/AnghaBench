
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
typedef TYPE_2__* devclass_t ;
struct TYPE_10__ {char* name; TYPE_1__** devices; } ;
struct TYPE_9__ {size_t unit; int * nameunit; TYPE_2__* devclass; } ;


 int DEVCLANAME (TYPE_2__*) ;
 int DEVICENAME (TYPE_1__*) ;
 int ENOMEM ;
 size_t INT_MAX ;
 int M_BUS ;
 int M_NOWAIT ;
 int M_ZERO ;
 int PDEBUG (char*) ;
 int devclass_alloc_unit (TYPE_2__*,TYPE_1__*,size_t*) ;
 int free (int *,int ) ;
 int * malloc (int,int ,int) ;
 int snprintf (int *,int,char*,char*,size_t) ;

__attribute__((used)) static int
devclass_add_device(devclass_t dc, device_t dev)
{
 int buflen, error;

 PDEBUG(("%s in devclass %s", DEVICENAME(dev), DEVCLANAME(dc)));

 buflen = snprintf(((void*)0), 0, "%s%d$", dc->name, INT_MAX);
 if (buflen < 0)
  return (ENOMEM);
 dev->nameunit = malloc(buflen, M_BUS, M_NOWAIT|M_ZERO);
 if (!dev->nameunit)
  return (ENOMEM);

 if ((error = devclass_alloc_unit(dc, dev, &dev->unit)) != 0) {
  free(dev->nameunit, M_BUS);
  dev->nameunit = ((void*)0);
  return (error);
 }
 dc->devices[dev->unit] = dev;
 dev->devclass = dc;
 snprintf(dev->nameunit, buflen, "%s%d", dc->name, dev->unit);

 return (0);
}
