
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cf_setting {int freq; } ;
struct acpi_perf_softc {int px_max_avail; int px_count; int px_curr_state; TYPE_1__* px_states; int perf_status; int perf_ctrl; scalar_t__ info_only; } ;
typedef int device_t ;
struct TYPE_2__ {int sts_val; int core_freq; int ctrl_val; } ;


 scalar_t__ CPUFREQ_CMP (int ,int ) ;
 int DELAY (int) ;
 int EINVAL ;
 int ENXIO ;
 int PX_GET_REG (int ) ;
 int PX_SET_REG (int ,int ) ;
 struct acpi_perf_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int ) ;

__attribute__((used)) static int
acpi_px_set(device_t dev, const struct cf_setting *set)
{
 struct acpi_perf_softc *sc;
 int i, status, sts_val, tries;

 if (set == ((void*)0))
  return (EINVAL);
 sc = device_get_softc(dev);


 if (sc->info_only)
  return (ENXIO);


 for (i = sc->px_max_avail; i < sc->px_count; i++) {
  if (CPUFREQ_CMP(set->freq, sc->px_states[i].core_freq))
   break;
 }
 if (i == sc->px_count)
  return (EINVAL);


 PX_SET_REG(sc->perf_ctrl, sc->px_states[i].ctrl_val);






 sts_val = sc->px_states[i].sts_val;
 for (tries = 0; tries < 1000; tries++) {
  status = PX_GET_REG(sc->perf_status);







  if (status == sts_val ||
      ((sts_val & ~0xff) == 0 && (status & 0xff) == sts_val))
   break;
  DELAY(10);
 }
 if (tries == 1000) {
  device_printf(dev, "Px transition to %d failed\n",
      sc->px_states[i].core_freq);
  return (ENXIO);
 }
 sc->px_curr_state = i;

 return (0);
}
