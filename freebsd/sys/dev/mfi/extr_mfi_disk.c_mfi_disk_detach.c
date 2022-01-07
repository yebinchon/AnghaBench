
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mfi_disk {int ld_flags; int ld_info; TYPE_1__* ld_controller; TYPE_2__* ld_disk; } ;
typedef int device_t ;
struct TYPE_4__ {int d_flags; } ;
struct TYPE_3__ {int mfi_io_lock; int mfi_ld_tqh; scalar_t__ mfi_detaching; scalar_t__ mfi_keep_deleted_volumes; } ;


 int DISKFLAG_OPEN ;
 int EBUSY ;
 int MFI_DISK_FLAGS_OPEN ;
 int M_MFIBUF ;
 int TAILQ_REMOVE (int *,struct mfi_disk*,int ) ;
 struct mfi_disk* device_get_softc (int ) ;
 int disk_destroy (TYPE_2__*) ;
 int free (int ,int ) ;
 int ld_link ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
mfi_disk_detach(device_t dev)
{
 struct mfi_disk *sc;

 sc = device_get_softc(dev);

 mtx_lock(&sc->ld_controller->mfi_io_lock);
 if (((sc->ld_disk->d_flags & DISKFLAG_OPEN) ||
     (sc->ld_flags & MFI_DISK_FLAGS_OPEN)) &&
     (sc->ld_controller->mfi_keep_deleted_volumes ||
     sc->ld_controller->mfi_detaching)) {
  mtx_unlock(&sc->ld_controller->mfi_io_lock);
  return (EBUSY);
 }
 mtx_unlock(&sc->ld_controller->mfi_io_lock);

 disk_destroy(sc->ld_disk);
 mtx_lock(&sc->ld_controller->mfi_io_lock);
 TAILQ_REMOVE(&sc->ld_controller->mfi_ld_tqh, sc, ld_link);
 mtx_unlock(&sc->ld_controller->mfi_io_lock);
 free(sc->ld_info, M_MFIBUF);
 return (0);
}
