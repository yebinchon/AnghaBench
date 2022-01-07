
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct est_softc {int dev; } ;
typedef int device_t ;


 int ENXIO ;
 int cpufreq_register (int ) ;
 struct est_softc* device_get_softc (int ) ;
 scalar_t__ est_get_info (int ) ;
 int mp_ncpus ;
 int strict ;

__attribute__((used)) static int
est_attach(device_t dev)
{
 struct est_softc *sc;

 sc = device_get_softc(dev);
 sc->dev = dev;


 if (strict == -1 && mp_ncpus > 1)
  strict = 0;

 if (est_get_info(dev))
  return (ENXIO);

 cpufreq_register(dev);
 return (0);
}
