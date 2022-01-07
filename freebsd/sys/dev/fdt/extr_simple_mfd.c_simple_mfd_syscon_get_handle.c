
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscon {int dummy; } ;
struct simple_mfd_softc {struct syscon* syscon; } ;
typedef int device_t ;


 int ENODEV ;
 struct simple_mfd_softc* device_get_softc (int ) ;

__attribute__((used)) static int
simple_mfd_syscon_get_handle(device_t dev, struct syscon **syscon)
{
 struct simple_mfd_softc *sc;

 sc = device_get_softc(dev);
 *syscon = sc->syscon;
 if (*syscon == ((void*)0))
  return (ENODEV);
 return (0);
}
