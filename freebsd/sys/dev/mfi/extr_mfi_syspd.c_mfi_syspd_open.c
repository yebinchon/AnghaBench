
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mfi_system_pd {int pd_flags; TYPE_1__* pd_controller; } ;
struct disk {struct mfi_system_pd* d_drv1; } ;
struct TYPE_2__ {int mfi_io_lock; } ;


 int ENXIO ;
 int MFI_DISK_FLAGS_DISABLED ;
 int MFI_DISK_FLAGS_OPEN ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
mfi_syspd_open(struct disk *dp)
{
 struct mfi_system_pd *sc;
 int error;

 sc = dp->d_drv1;
 mtx_lock(&sc->pd_controller->mfi_io_lock);
 if (sc->pd_flags & MFI_DISK_FLAGS_DISABLED)
  error = ENXIO;
 else {
  sc->pd_flags |= MFI_DISK_FLAGS_OPEN;
  error = 0;
 }
 mtx_unlock(&sc->pd_controller->mfi_io_lock);
 return (error);
}
