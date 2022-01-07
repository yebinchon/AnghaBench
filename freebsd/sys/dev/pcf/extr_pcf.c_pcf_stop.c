
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf_softc {int dummy; } ;
typedef int device_t ;


 struct pcf_softc* DEVTOSOFTC (int ) ;
 int PCF_LOCK (struct pcf_softc*) ;
 int PCF_UNLOCK (struct pcf_softc*) ;
 int device_printf (int ,char*) ;
 int pcf_stop_locked (struct pcf_softc*) ;

int
pcf_stop(device_t dev)
{
 struct pcf_softc *sc = DEVTOSOFTC(dev);




 PCF_LOCK(sc);
 pcf_stop_locked(sc);
 PCF_UNLOCK(sc);

 return (0);
}
