
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ppb_device {char const* name; } ;
typedef int * device_t ;


 int M_NOWAIT ;
 int M_PPBUSDEV ;
 int M_ZERO ;
 int * device_add_child_ordered (int *,int ,char const*,int) ;
 int device_set_ivars (int *,struct ppb_device*) ;
 struct ppb_device* malloc (int,int ,int) ;

__attribute__((used)) static device_t
ppbus_add_child(device_t dev, u_int order, const char *name, int unit)
{
 struct ppb_device *ppbdev;
 device_t child;


 ppbdev = malloc(sizeof(struct ppb_device), M_PPBUSDEV,
  M_NOWAIT | M_ZERO);
 if (!ppbdev)
  return (((void*)0));


 ppbdev->name = name;



 child = device_add_child_ordered(dev, order, name, unit);
 device_set_ivars(child, ppbdev);

 return (child);
}
