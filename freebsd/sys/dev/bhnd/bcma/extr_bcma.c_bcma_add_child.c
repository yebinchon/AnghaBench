
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct bcma_devinfo {int dummy; } ;
typedef int * device_t ;


 struct bcma_devinfo* bcma_alloc_dinfo (int *) ;
 int * device_add_child_ordered (int *,int ,char const*,int) ;
 int device_delete_child (int *,int *) ;
 int device_set_ivars (int *,struct bcma_devinfo*) ;

__attribute__((used)) static device_t
bcma_add_child(device_t dev, u_int order, const char *name, int unit)
{
 struct bcma_devinfo *dinfo;
 device_t child;

 child = device_add_child_ordered(dev, order, name, unit);
 if (child == ((void*)0))
  return (((void*)0));

 if ((dinfo = bcma_alloc_dinfo(dev)) == ((void*)0)) {
  device_delete_child(dev, child);
  return (((void*)0));
 }

 device_set_ivars(child, dinfo);

 return (child);
}
