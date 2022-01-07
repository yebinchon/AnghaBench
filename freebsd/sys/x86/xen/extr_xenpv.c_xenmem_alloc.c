
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int * device_t ;


 struct resource* XENMEM_ALLOC (int *,int *,int*,size_t) ;
 int * device_get_parent (int *) ;

struct resource *
xenmem_alloc(device_t dev, int *res_id, size_t size)
{
 device_t parent;

 parent = device_get_parent(dev);
 if (parent == ((void*)0))
  return (((void*)0));
 return (XENMEM_ALLOC(parent, dev, res_id, size));
}
