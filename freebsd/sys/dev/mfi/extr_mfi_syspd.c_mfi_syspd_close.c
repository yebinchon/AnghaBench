
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mfi_system_pd {TYPE_1__* pd_controller; int pd_flags; } ;
struct disk {struct mfi_system_pd* d_drv1; } ;
struct TYPE_2__ {int mfi_io_lock; } ;


 int MFI_DISK_FLAGS_OPEN ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
mfi_syspd_close(struct disk *dp)
{
 struct mfi_system_pd *sc;

 sc = dp->d_drv1;
 mtx_lock(&sc->pd_controller->mfi_io_lock);
 sc->pd_flags &= ~MFI_DISK_FLAGS_OPEN;
 mtx_unlock(&sc->pd_controller->mfi_io_lock);

 return (0);
}
