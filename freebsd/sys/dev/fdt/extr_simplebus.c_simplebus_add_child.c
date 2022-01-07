
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int obd_node; } ;
struct simplebus_devinfo {int rl; TYPE_1__ obdinfo; } ;
typedef int * device_t ;


 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int * device_add_child_ordered (int *,int ,char const*,int) ;
 int device_set_ivars (int *,struct simplebus_devinfo*) ;
 struct simplebus_devinfo* malloc (int,int ,int) ;
 int resource_list_init (int *) ;

__attribute__((used)) static device_t
simplebus_add_child(device_t dev, u_int order, const char *name, int unit)
{
 device_t cdev;
 struct simplebus_devinfo *ndi;

 cdev = device_add_child_ordered(dev, order, name, unit);
 if (cdev == ((void*)0))
  return (((void*)0));

 ndi = malloc(sizeof(*ndi), M_DEVBUF, M_WAITOK | M_ZERO);
 ndi->obdinfo.obd_node = -1;
 resource_list_init(&ndi->rl);
 device_set_ivars(cdev, ndi);

 return (cdev);
}
