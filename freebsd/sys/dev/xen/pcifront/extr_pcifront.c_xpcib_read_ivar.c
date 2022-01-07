
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xpcib_softc {uintptr_t bus; } ;
typedef int device_t ;


 int ENOENT ;

 scalar_t__ device_get_softc (int ) ;

__attribute__((used)) static int
xpcib_read_ivar(device_t dev, device_t child, int which, uintptr_t *result)
{
 struct xpcib_softc *sc = (struct xpcib_softc *)device_get_softc(dev);
 switch (which) {
 case 128:
  *result = sc->bus;
  return 0;
 }
 return ENOENT;
}
