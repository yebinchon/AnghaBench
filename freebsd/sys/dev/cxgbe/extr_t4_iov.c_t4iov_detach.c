
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4iov_softc {scalar_t__ sc_attached; } ;
typedef int device_t ;


 struct t4iov_softc* device_get_softc (int ) ;
 int t4iov_detach_child (int ) ;

__attribute__((used)) static int
t4iov_detach(device_t dev)
{
 struct t4iov_softc *sc;
 int error;

 sc = device_get_softc(dev);
 if (sc->sc_attached) {
  error = t4iov_detach_child(dev);
  if (error)
   return (error);
 }
 return (0);
}
