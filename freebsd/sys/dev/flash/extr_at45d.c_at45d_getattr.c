
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bio {int bio_length; int bio_data; TYPE_1__* bio_disk; int bio_attribute; } ;
struct at45d_softc {int dev; } ;
struct TYPE_2__ {struct at45d_softc* d_drv1; } ;


 int EFAULT ;
 int ENXIO ;
 int bcopy (int *,int ,int) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
at45d_getattr(struct bio *bp)
{
 struct at45d_softc *sc;





 if (bp->bio_disk == ((void*)0) || bp->bio_disk->d_drv1 == ((void*)0))
  return (ENXIO);
 if (strcmp(bp->bio_attribute, "SPI::device") != 0)
  return (-1);
 sc = bp->bio_disk->d_drv1;
 if (bp->bio_length != sizeof(sc->dev))
  return (EFAULT);
 bcopy(&sc->dev, bp->bio_data, sizeof(sc->dev));
 return (0);
}
