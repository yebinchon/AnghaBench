
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mfi_disk {int ld_flags; TYPE_1__* ld_controller; } ;
struct TYPE_2__ {int mfi_io_lock; } ;


 int MA_OWNED ;
 int MFI_DISK_FLAGS_DISABLED ;
 int mtx_assert (int *,int ) ;

void
mfi_disk_enable(struct mfi_disk *sc)
{

 mtx_assert(&sc->ld_controller->mfi_io_lock, MA_OWNED);
 sc->ld_flags &= ~MFI_DISK_FLAGS_DISABLED;
}
