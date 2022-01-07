
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct est_softc {int freq_list; scalar_t__ msr_settings; scalar_t__ acpi_settings; } ;
typedef int device_t ;


 int M_DEVBUF ;
 int cpufreq_unregister (int ) ;
 struct est_softc* device_get_softc (int ) ;
 int free (int ,int ) ;

__attribute__((used)) static int
est_detach(device_t dev)
{
 struct est_softc *sc;
 int error;

 error = cpufreq_unregister(dev);
 if (error)
  return (error);

 sc = device_get_softc(dev);
 if (sc->acpi_settings || sc->msr_settings)
  free(sc->freq_list, M_DEVBUF);
 return (0);
}
