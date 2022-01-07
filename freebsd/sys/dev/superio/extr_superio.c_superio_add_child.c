
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct superio_devinfo {int ldn; int resources; int * dev; int type; } ;
typedef int * device_t ;


 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int SUPERIO_DEV_NONE ;
 int * device_add_child_ordered (int *,int ,char const*,int) ;
 int device_delete_child (int *,int *) ;
 int device_set_ivars (int *,struct superio_devinfo*) ;
 struct superio_devinfo* malloc (int,int ,int) ;
 int resource_list_init (int *) ;

__attribute__((used)) static device_t
superio_add_child(device_t dev, u_int order, const char *name, int unit)
{
 struct superio_devinfo *dinfo;
 device_t child;

 child = device_add_child_ordered(dev, order, name, unit);
 if (child == ((void*)0))
  return (((void*)0));
 dinfo = malloc(sizeof(*dinfo), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (dinfo == ((void*)0)) {
  device_delete_child(dev, child);
  return (((void*)0));
 }
 dinfo->ldn = 0xff;
 dinfo->type = SUPERIO_DEV_NONE;
 dinfo->dev = child;
 resource_list_init(&dinfo->resources);
 device_set_ivars(child, dinfo);
 return (child);
}
