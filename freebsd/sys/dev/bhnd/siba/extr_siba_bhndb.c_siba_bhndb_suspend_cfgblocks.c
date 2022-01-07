
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_3__ {size_t num_cfg_blocks; } ;
struct siba_devinfo {TYPE_2__** cfg_res; TYPE_1__ core_id; } ;
typedef int device_t ;
struct TYPE_4__ {int res; } ;


 int BHNDB_SUSPEND_RESOURCE (int ,int ,int ,int ) ;
 int SYS_RES_MEMORY ;
 int device_get_parent (int ) ;

__attribute__((used)) static void
siba_bhndb_suspend_cfgblocks(device_t dev, struct siba_devinfo *dinfo) {
 for (u_int i = 0; i < dinfo->core_id.num_cfg_blocks; i++) {
  if (dinfo->cfg_res[i] == ((void*)0))
   continue;

  BHNDB_SUSPEND_RESOURCE(device_get_parent(dev), dev,
      SYS_RES_MEMORY, dinfo->cfg_res[i]->res);
 }
}
