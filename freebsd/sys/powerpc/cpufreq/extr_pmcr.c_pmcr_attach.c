
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcr_softc {int dev; } ;
typedef int device_t ;


 int cpufreq_register (int ) ;
 struct pmcr_softc* device_get_softc (int ) ;

__attribute__((used)) static int
pmcr_attach(device_t dev)
{
 struct pmcr_softc *sc;

 sc = device_get_softc(dev);
 sc->dev = dev;

 cpufreq_register(dev);
 return (0);
}
