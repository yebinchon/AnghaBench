
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int si_drv1; } ;
struct agp_softc {int as_isopen; } ;
typedef int device_t ;


 int device_busy (int ) ;
 struct agp_softc* device_get_softc (int ) ;

__attribute__((used)) static int
agp_open(struct cdev *kdev, int oflags, int devtype, struct thread *td)
{
 device_t dev = kdev->si_drv1;
 struct agp_softc *sc = device_get_softc(dev);

 if (!sc->as_isopen) {
  sc->as_isopen = 1;
  device_busy(dev);
 }

 return 0;
}
