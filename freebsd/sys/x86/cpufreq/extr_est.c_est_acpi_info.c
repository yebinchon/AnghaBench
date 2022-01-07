
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct est_softc {int acpi_settings; } ;
struct cf_setting {scalar_t__ freq; int power; int * spec; int id16; int volts; } ;
typedef struct cf_setting freq_info ;
typedef int * device_t ;


 int CPUFREQ_DRV_SETTINGS (int *,struct cf_setting*,int*) ;
 int ENOMEM ;
 int ENXIO ;
 int MAX_SETTINGS ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_TEMP ;
 int TRUE ;
 scalar_t__ bootverbose ;
 int * device_find_child (int ,char*,int) ;
 int device_get_parent (int *) ;
 struct est_softc* device_get_softc (int *) ;
 int device_is_attached (int *) ;
 int device_printf (int *,char*,scalar_t__) ;
 int est_get_id16 (int *) ;
 int est_set_id16 (int *,int ,int ) ;
 int free (struct cf_setting*,int ) ;
 struct cf_setting* malloc (int,int ,int ) ;
 int strict ;

__attribute__((used)) static int
est_acpi_info(device_t dev, freq_info **freqs, size_t *freqslen)
{
 struct est_softc *sc;
 struct cf_setting *sets;
 freq_info *table;
 device_t perf_dev;
 int count, error, i, j;
 uint16_t saved_id16;

 perf_dev = device_find_child(device_get_parent(dev), "acpi_perf", -1);
 if (perf_dev == ((void*)0) || !device_is_attached(perf_dev))
  return (ENXIO);


 sc = device_get_softc(dev);
 table = ((void*)0);
 sets = malloc(MAX_SETTINGS * sizeof(*sets), M_TEMP, M_NOWAIT);
 if (sets == ((void*)0))
  return (ENOMEM);
 count = MAX_SETTINGS;
 error = CPUFREQ_DRV_SETTINGS(perf_dev, sets, &count);
 if (error)
  goto out;


 table = malloc(count * sizeof(*table), M_DEVBUF, M_NOWAIT);
 if (table == ((void*)0)) {
  error = ENOMEM;
  goto out;
 }
 est_get_id16(&saved_id16);
 for (i = 0, j = 0; i < count; i++) {



  if (sets[i].freq > 0) {
   error = est_set_id16(dev, sets[i].spec[0], strict);
   if (error != 0) {
    if (bootverbose)
     device_printf(dev, "Invalid freq %u, "
         "ignored.\n", sets[i].freq);
    continue;
   }
   table[j].freq = sets[i].freq;
   table[j].volts = sets[i].volts;
   table[j].id16 = sets[i].spec[0];
   table[j].power = sets[i].power;
   ++j;
  }
 }

 est_set_id16(dev, saved_id16, 0);

 sc->acpi_settings = TRUE;
 *freqs = table;
 *freqslen = j;
 error = 0;

out:
 if (sets)
  free(sets, M_TEMP);
 if (error && table)
  free(table, M_DEVBUF);
 return (error);
}
