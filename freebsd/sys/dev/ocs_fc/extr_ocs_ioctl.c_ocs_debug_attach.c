
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ocs_softc {int dbg_lock; TYPE_1__* cdev; int dev; } ;
typedef int int32_t ;
struct TYPE_2__ {struct ocs_softc* si_drv1; } ;


 int GID_OPERATOR ;
 int INT32_MAX ;
 int MTX_DEF ;
 int UID_ROOT ;
 int device_get_name (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,char*,int ) ;
 TYPE_1__* make_dev (int *,int ,int ,int ,int,char*,int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int ocs_cdevsw ;
 int ocs_debug_enable (int ) ;
 int ocs_sysctl_init (struct ocs_softc*) ;
 int resource_int_value (int ,int ,char*,int *) ;

void
ocs_debug_attach(void *os)
{
 struct ocs_softc *ocs = os;
 int error = 0;
 char *resname = ((void*)0);
 int32_t unit = INT32_MAX;
 uint32_t ocs_debug_mask = 0;

 resname = "debug_mask";
 if (0 == (error = resource_int_value(device_get_name(ocs->dev), device_get_unit(ocs->dev),
    resname, &ocs_debug_mask))) {
  device_printf(ocs->dev, "setting %s to %010x\n", resname, ocs_debug_mask);
  ocs_debug_enable(ocs_debug_mask);
 }

 unit = device_get_unit(ocs->dev);
 ocs->cdev = make_dev(&ocs_cdevsw, unit, UID_ROOT, GID_OPERATOR, 0640,
   "ocs%d", unit);
 if (ocs->cdev) {
  ocs->cdev->si_drv1 = ocs;
 }


 ocs_sysctl_init(ocs);
 mtx_init(&ocs->dbg_lock, "ocs_dbg_lock", ((void*)0), MTX_DEF);
}
