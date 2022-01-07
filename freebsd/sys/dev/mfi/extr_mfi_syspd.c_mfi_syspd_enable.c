
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mfi_system_pd {int pd_flags; TYPE_1__* pd_controller; int pd_dev; } ;
struct TYPE_2__ {int mfi_io_lock; } ;


 int MA_OWNED ;
 int MFI_DISK_FLAGS_DISABLED ;
 int device_printf (int ,char*) ;
 int mtx_assert (int *,int ) ;

void
mfi_syspd_enable(struct mfi_system_pd *sc)
{

 device_printf(sc->pd_dev, "syspd enable \n");
 mtx_assert(&sc->pd_controller->mfi_io_lock, MA_OWNED);
 sc->pd_flags &= ~MFI_DISK_FLAGS_DISABLED;
}
