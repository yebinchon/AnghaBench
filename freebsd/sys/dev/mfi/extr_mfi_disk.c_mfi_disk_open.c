
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mfi_disk {int ld_flags; TYPE_1__* ld_controller; } ;
struct disk {struct mfi_disk* d_drv1; } ;
struct TYPE_2__ {int mfi_io_lock; } ;


 int ENXIO ;
 int MFI_DISK_FLAGS_DISABLED ;
 int MFI_DISK_FLAGS_OPEN ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
mfi_disk_open(struct disk *dp)
{
 struct mfi_disk *sc;
 int error;

 sc = dp->d_drv1;
 mtx_lock(&sc->ld_controller->mfi_io_lock);
 if (sc->ld_flags & MFI_DISK_FLAGS_DISABLED)
  error = ENXIO;
 else {
  sc->ld_flags |= MFI_DISK_FLAGS_OPEN;
  error = 0;
 }
 mtx_unlock(&sc->ld_controller->mfi_io_lock);

 return (error);
}
