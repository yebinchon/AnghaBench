
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_4__ {size_t num_cfg_blocks; } ;
struct siba_devinfo {TYPE_1__** cfg_res; TYPE_2__ core_id; } ;
typedef scalar_t__ device_t ;
struct TYPE_3__ {int res; } ;


 int BHNDB_RESUME_RESOURCE (scalar_t__,scalar_t__,int ,int ) ;
 int BUS_SUSPEND_CHILD (scalar_t__,scalar_t__) ;
 int EBUSY ;
 int SYS_RES_MEMORY ;
 int bhnd_generic_br_resume_child (scalar_t__,scalar_t__) ;
 struct siba_devinfo* device_get_ivars (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 int device_is_suspended (scalar_t__) ;
 int siba_bhndb_suspend_cfgblocks (scalar_t__,struct siba_devinfo*) ;

__attribute__((used)) static int
siba_bhndb_resume_child(device_t dev, device_t child)
{
 struct siba_devinfo *dinfo;
 int error;

 if (device_get_parent(child) != dev)
  BUS_SUSPEND_CHILD(device_get_parent(dev), child);

 if (!device_is_suspended(child))
  return (EBUSY);

 dinfo = device_get_ivars(child);


 for (u_int i = 0; i < dinfo->core_id.num_cfg_blocks; i++) {
  if (dinfo->cfg_res[i] == ((void*)0))
   continue;

  error = BHNDB_RESUME_RESOURCE(device_get_parent(dev), dev,
      SYS_RES_MEMORY, dinfo->cfg_res[i]->res);
  if (error) {
   siba_bhndb_suspend_cfgblocks(dev, dinfo);
   return (error);
  }
 }


 if ((error = bhnd_generic_br_resume_child(dev, child))) {
  siba_bhndb_suspend_cfgblocks(dev, dinfo);
  return (error);
 }

 return (0);
}
