
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int * device_t ;


 int ENXIO ;
 int XENMEM_FREE (int *,int *,int,struct resource*) ;
 int * device_get_parent (int *) ;

int
xenmem_free(device_t dev, int res_id, struct resource *res)
{
 device_t parent;

 parent = device_get_parent(dev);
 if (parent == ((void*)0))
  return (ENXIO);
 return (XENMEM_FREE(parent, dev, res_id, res));
}
