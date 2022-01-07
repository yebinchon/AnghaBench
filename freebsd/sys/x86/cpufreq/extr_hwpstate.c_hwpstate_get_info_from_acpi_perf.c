
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwpstate_softc {int cfnum; struct hwpstate_setting* hwpstate_settings; } ;
struct hwpstate_setting {int pstate_id; int lat; int power; int volts; int freq; } ;
struct cf_setting {int* spec; int lat; int power; int volts; int freq; } ;
typedef int device_t ;


 int CPUFREQ_DRV_SETTINGS (int ,struct cf_setting*,int*) ;
 int ENOMEM ;
 int ENXIO ;
 int HWPSTATE_DEBUG (int ,char*) ;
 int MAX_SETTINGS ;
 int M_NOWAIT ;
 int M_TEMP ;
 struct hwpstate_softc* device_get_softc (int ) ;
 int free (struct cf_setting*,int ) ;
 struct cf_setting* malloc (int,int ,int ) ;

__attribute__((used)) static int
hwpstate_get_info_from_acpi_perf(device_t dev, device_t perf_dev)
{
 struct hwpstate_softc *sc;
 struct cf_setting *perf_set;
 struct hwpstate_setting *hwpstate_set;
 int count, error, i;

 perf_set = malloc(MAX_SETTINGS * sizeof(*perf_set), M_TEMP, M_NOWAIT);
 if (perf_set == ((void*)0)) {
  HWPSTATE_DEBUG(dev, "nomem\n");
  return (ENOMEM);
 }




 count = MAX_SETTINGS;
 error = CPUFREQ_DRV_SETTINGS(perf_dev, perf_set, &count);
 if (error) {
  HWPSTATE_DEBUG(dev, "error: CPUFREQ_DRV_SETTINGS.\n");
  goto out;
 }
 sc = device_get_softc(dev);
 sc->cfnum = count;
 hwpstate_set = sc->hwpstate_settings;
 for (i = 0; i < count; i++) {
  if (i == perf_set[i].spec[0]) {
   hwpstate_set[i].pstate_id = i;
   hwpstate_set[i].freq = perf_set[i].freq;
   hwpstate_set[i].volts = perf_set[i].volts;
   hwpstate_set[i].power = perf_set[i].power;
   hwpstate_set[i].lat = perf_set[i].lat;
  } else {
   HWPSTATE_DEBUG(dev, "ACPI _PSS object mismatch.\n");
   error = ENXIO;
   goto out;
  }
 }
out:
 if (perf_set)
  free(perf_set, M_TEMP);
 return (error);
}
