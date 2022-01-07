
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int freq; } ;
struct cf_level {TYPE_1__ total_set; } ;
struct acpi_tz_softc {int tz_cooling_saved_freq; scalar_t__ tz_cooling_updated; int tz_temperature; int tz_dev; void* tz_cooling_active; } ;
typedef int * device_t ;


 int ACPI_VPRINT (int ,int ,char*,int ,char*,int,int) ;
 int CPUFREQ_GET (int *,struct cf_level*) ;
 int CPUFREQ_LEVELS (int *,struct cf_level*,int*) ;
 int CPUFREQ_MAX_LEVELS ;
 int CPUFREQ_PRIO_KERN ;
 int CPUFREQ_SET (int *,struct cf_level*,int ) ;
 int E2BIG ;
 int ENOMEM ;
 int ENXIO ;
 void* FALSE ;
 int M_NOWAIT ;
 int M_TEMP ;
 scalar_t__ TRUE ;
 int TZ_KELVTOC (int ) ;
 int acpi_device_get_parent_softc (int ) ;
 int acpi_tz_cpufreq_restore (struct acpi_tz_softc*) ;
 int devclass_find (char*) ;
 int * devclass_get_device (int ,int ) ;
 int free (struct cf_level*,int ) ;
 struct cf_level* malloc (int,int ,int ) ;
 int printf (char*) ;

__attribute__((used)) static int
acpi_tz_cpufreq_update(struct acpi_tz_softc *sc, int req)
{
    device_t dev;
    struct cf_level *levels;
    int num_levels, error, freq, desired_freq, perf, i;

    levels = malloc(CPUFREQ_MAX_LEVELS * sizeof(*levels), M_TEMP, M_NOWAIT);
    if (levels == ((void*)0))
 return (ENOMEM);





    if ((dev = devclass_get_device(devclass_find("cpufreq"), 0)) == ((void*)0)) {
 error = ENXIO;
 goto out;
    }


    error = CPUFREQ_GET(dev, &levels[0]);
    if (error)
 goto out;
    freq = levels[0].total_set.freq;


    num_levels = CPUFREQ_MAX_LEVELS;
    error = CPUFREQ_LEVELS(dev, levels, &num_levels);
    if (error) {
 if (error == E2BIG)
     printf("cpufreq: need to increase CPUFREQ_MAX_LEVELS\n");
 goto out;
    }


    perf = 100 * freq / levels[0].total_set.freq - req;
    if (perf < 0)
 perf = 0;
    else if (perf > 100)
 perf = 100;
    desired_freq = levels[0].total_set.freq * perf / 100;

    if (desired_freq < freq) {

 for (i = 0; i < num_levels; i++)
     if (levels[i].total_set.freq <= desired_freq)
  break;


 if (i == num_levels)
     i--;
    } else {

 if (!sc->tz_cooling_updated) {
     sc->tz_cooling_active = FALSE;
     goto out;
 }


 if (desired_freq > sc->tz_cooling_saved_freq)
     desired_freq = sc->tz_cooling_saved_freq;


 for (i = num_levels - 1; i >= 0; i--)
     if (levels[i].total_set.freq >= desired_freq)
  break;


 if (i == -1)
     i++;


 if (i == 0 || desired_freq == sc->tz_cooling_saved_freq) {
     error = acpi_tz_cpufreq_restore(sc);
     if (error == 0)
  sc->tz_cooling_active = FALSE;
     goto out;
 }
    }


    if (levels[i].total_set.freq != freq) {
 ACPI_VPRINT(sc->tz_dev, acpi_device_get_parent_softc(sc->tz_dev),
     "temperature %d.%dC: %screasing clock speed "
     "from %d MHz to %d MHz\n",
     TZ_KELVTOC(sc->tz_temperature),
     (freq > levels[i].total_set.freq) ? "de" : "in",
     freq, levels[i].total_set.freq);
 error = CPUFREQ_SET(dev, &levels[i], CPUFREQ_PRIO_KERN);
 if (error == 0 && !sc->tz_cooling_updated) {
     sc->tz_cooling_saved_freq = freq;
     sc->tz_cooling_updated = TRUE;
 }
    }

out:
    if (levels)
 free(levels, M_TEMP);
    return (error);
}
