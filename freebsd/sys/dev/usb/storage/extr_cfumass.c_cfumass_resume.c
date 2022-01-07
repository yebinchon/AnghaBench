
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfumass_softc {int dummy; } ;
typedef int device_t ;


 int CFUMASS_DEBUG (struct cfumass_softc*,char*) ;
 struct cfumass_softc* device_get_softc (int ) ;

__attribute__((used)) static int
cfumass_resume(device_t dev)
{
 struct cfumass_softc *sc;

 sc = device_get_softc(dev);
 CFUMASS_DEBUG(sc, "go");

 return (0);
}
