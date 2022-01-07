
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disk {struct cfi_disk_softc* d_drv1; } ;
struct cfi_disk_softc {int flags; } ;


 int CFI_DISK_OPEN ;

__attribute__((used)) static int
cfi_disk_close(struct disk *dp)
{
 struct cfi_disk_softc *sc = dp->d_drv1;

 sc->flags &= ~CFI_DISK_OPEN;
 return 0;
}
