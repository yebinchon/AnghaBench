
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct mfi_softc {int dummy; } ;
struct mfi_disk {int ld_id; struct mfi_softc* ld_controller; } ;
struct disk {struct mfi_disk* d_drv1; } ;
typedef int off_t ;


 int MFI_SECTOR_LEN ;
 int mfi_dump_blocks (struct mfi_softc*,int ,int,void*,size_t) ;

__attribute__((used)) static int
mfi_disk_dump(void *arg, void *virt, vm_offset_t phys, off_t offset, size_t len)
{
 struct mfi_disk *sc;
 struct mfi_softc *parent_sc;
 struct disk *dp;
 int error;

 dp = arg;
 sc = dp->d_drv1;
 parent_sc = sc->ld_controller;

 if (len > 0) {
  if ((error = mfi_dump_blocks(parent_sc, sc->ld_id, offset /
      MFI_SECTOR_LEN, virt, len)) != 0)
   return (error);
 } else {

 }

 return (0);
}
