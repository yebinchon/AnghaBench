
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcma_devinfo {TYPE_1__* res_agent; } ;
typedef scalar_t__ device_t ;
struct TYPE_2__ {int res; } ;


 int BHNDB_SUSPEND_RESOURCE (scalar_t__,scalar_t__,int ,int ) ;
 int BUS_SUSPEND_CHILD (scalar_t__,scalar_t__) ;
 int EBUSY ;
 int SYS_RES_MEMORY ;
 int bhnd_generic_br_suspend_child (scalar_t__,scalar_t__) ;
 struct bcma_devinfo* device_get_ivars (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 scalar_t__ device_is_suspended (scalar_t__) ;

__attribute__((used)) static int
bcma_bhndb_suspend_child(device_t dev, device_t child)
{
 struct bcma_devinfo *dinfo;
 int error;

 if (device_get_parent(child) != dev)
  BUS_SUSPEND_CHILD(device_get_parent(dev), child);

 if (device_is_suspended(child))
  return (EBUSY);

 dinfo = device_get_ivars(child);


 if ((error = bhnd_generic_br_suspend_child(dev, child)))
  return (error);


 if (dinfo->res_agent != ((void*)0))
  BHNDB_SUSPEND_RESOURCE(device_get_parent(dev), dev,
      SYS_RES_MEMORY, dinfo->res_agent->res);

 return (0);
}
