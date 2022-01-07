
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
typedef scalar_t__ device_t ;


 struct resource_list* BUS_GET_RESOURCE_LIST (scalar_t__,scalar_t__) ;
 int BUS_SUSPEND_CHILD (scalar_t__,scalar_t__) ;
 int EBUSY ;
 int bhnd_generic_suspend_child (scalar_t__,scalar_t__) ;
 int bhndb_do_suspend_resources (scalar_t__,struct resource_list*) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 scalar_t__ device_is_suspended (scalar_t__) ;

int
bhnd_generic_br_suspend_child(device_t dev, device_t child)
{
 struct resource_list *rl;
 int error;

 if (device_get_parent(child) != dev)
  BUS_SUSPEND_CHILD(device_get_parent(dev), child);

 if (device_is_suspended(child))
  return (EBUSY);


 if ((error = bhnd_generic_suspend_child(dev, child)))
  return (error);


 rl = BUS_GET_RESOURCE_LIST(device_get_parent(child), child);
 if (rl == ((void*)0))
  return (0);


 bhndb_do_suspend_resources(dev, rl);

 return (0);
}
