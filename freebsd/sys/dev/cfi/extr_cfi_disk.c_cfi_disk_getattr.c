
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfi_softc {int sc_dev; } ;
struct cfi_disk_softc {struct cfi_softc* parent; } ;
struct bio {int bio_length; int bio_data; int bio_attribute; TYPE_1__* bio_disk; } ;
typedef int device_t ;
typedef int dev ;
struct TYPE_2__ {struct cfi_disk_softc* d_drv1; } ;


 int EFAULT ;
 int ENXIO ;
 int bcopy (int *,int ,int) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
cfi_disk_getattr(struct bio *bp)
{
 struct cfi_disk_softc *dsc;
 struct cfi_softc *sc;
 device_t dev;

 if (bp->bio_disk == ((void*)0) || bp->bio_disk->d_drv1 == ((void*)0))
  return (ENXIO);

 dsc = bp->bio_disk->d_drv1;
 sc = dsc->parent;
 dev = sc->sc_dev;

 if (strcmp(bp->bio_attribute, "CFI::device") == 0) {
  if (bp->bio_length != sizeof(dev))
   return (EFAULT);
  bcopy(&dev, bp->bio_data, sizeof(dev));
 } else
  return (-1);
 return (0);
}
