
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mfi_system_pd {int pd_flags; int pd_dev; TYPE_1__* pd_controller; } ;
struct TYPE_2__ {scalar_t__ mfi_delete_busy_volumes; int mfi_io_lock; } ;


 int EBUSY ;
 int MA_OWNED ;
 int MFI_DISK_FLAGS_DISABLED ;
 int MFI_DISK_FLAGS_OPEN ;
 int device_printf (int ,char*) ;
 int mtx_assert (int *,int ) ;

int
mfi_syspd_disable(struct mfi_system_pd *sc)
{

 device_printf(sc->pd_dev, "syspd disable \n");
 mtx_assert(&sc->pd_controller->mfi_io_lock, MA_OWNED);
 if (sc->pd_flags & MFI_DISK_FLAGS_OPEN) {
  if (sc->pd_controller->mfi_delete_busy_volumes)
   return (0);
  device_printf(sc->pd_dev,
      "Unable to delete busy syspd device\n");
  return (EBUSY);
 }
 sc->pd_flags |= MFI_DISK_FLAGS_DISABLED;
 return (0);
}
