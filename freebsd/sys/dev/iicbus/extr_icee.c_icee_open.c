
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct icee_softc {int dev; } ;
struct cdev {int dummy; } ;


 struct icee_softc* CDEV2SOFTC (struct cdev*) ;
 scalar_t__ DS_BUSY ;
 int device_busy (int ) ;
 scalar_t__ device_get_state (int ) ;

__attribute__((used)) static int
icee_open(struct cdev *dev, int oflags, int devtype, struct thread *td)
{
 struct icee_softc *sc;

 sc = CDEV2SOFTC(dev);
 if (device_get_state(sc->dev) < DS_BUSY)
  device_busy(sc->dev);

 return (0);
}
