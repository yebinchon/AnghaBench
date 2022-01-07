
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct icee_softc {int dev; } ;
struct cdev {int dummy; } ;


 struct icee_softc* CDEV2SOFTC (struct cdev*) ;
 int device_unbusy (int ) ;

__attribute__((used)) static int
icee_close(struct cdev *dev, int fflag, int devtype, struct thread *td)
{
 struct icee_softc *sc;

 sc = CDEV2SOFTC(dev);
 device_unbusy(sc->dev);
 return (0);
}
