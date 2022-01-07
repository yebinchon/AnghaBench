
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct n25q_softc {int dev; } ;
struct bio {int bio_length; int bio_data; int bio_attribute; TYPE_1__* bio_disk; } ;
typedef int device_t ;
typedef int dev ;
struct TYPE_2__ {struct n25q_softc* d_drv1; } ;


 int EFAULT ;
 int ENXIO ;
 int bcopy (int *,int ,int) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
n25q_getattr(struct bio *bp)
{
 struct n25q_softc *sc;
 device_t dev;

 if (bp->bio_disk == ((void*)0) || bp->bio_disk->d_drv1 == ((void*)0)) {
  return (ENXIO);
 }

 sc = bp->bio_disk->d_drv1;
 dev = sc->dev;

 if (strcmp(bp->bio_attribute, "SPI::device") == 0) {
  if (bp->bio_length != sizeof(dev)) {
   return (EFAULT);
  }
  bcopy(&dev, bp->bio_data, sizeof(dev));
  return (0);
 }

 return (-1);
}
