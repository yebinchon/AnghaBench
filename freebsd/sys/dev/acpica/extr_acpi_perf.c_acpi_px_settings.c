
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_setting {int dummy; } ;
struct acpi_perf_softc {int px_count; int px_max_avail; int * px_states; } ;
typedef int device_t ;


 int E2BIG ;
 int EINVAL ;
 int acpi_px_to_set (int ,int *,struct cf_setting*) ;
 struct acpi_perf_softc* device_get_softc (int ) ;

__attribute__((used)) static int
acpi_px_settings(device_t dev, struct cf_setting *sets, int *count)
{
 struct acpi_perf_softc *sc;
 int x, y;

 sc = device_get_softc(dev);
 if (sets == ((void*)0) || count == ((void*)0))
  return (EINVAL);
 if (*count < sc->px_count - sc->px_max_avail)
  return (E2BIG);


 y = 0;
 for (x = sc->px_max_avail; x < sc->px_count; x++, y++)
  acpi_px_to_set(dev, &sc->px_states[x], &sets[y]);
 *count = sc->px_count - sc->px_max_avail;

 return (0);
}
