
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wi_softc {int dummy; } ;
typedef int device_t ;


 int WI_LOCK (struct wi_softc*) ;
 int WI_UNLOCK (struct wi_softc*) ;
 struct wi_softc* device_get_softc (int ) ;
 int wi_stop (struct wi_softc*,int) ;

__attribute__((used)) static int
wi_pci_suspend(device_t dev)
{
 struct wi_softc *sc = device_get_softc(dev);

 WI_LOCK(sc);
 wi_stop(sc, 1);
 WI_UNLOCK(sc);

 return (0);
}
