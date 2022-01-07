
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ofw_compat_data {scalar_t__ ocd_data; } ;
struct mpc85xx_jog_softc {int low; int min_freq; int cpu; int high; int dev; } ;
struct mpc85xx_constraints {int min_mult; int threshold; } ;
typedef scalar_t__ phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int GUTS_PORPLLSR ;
 int OF_getencprop (scalar_t__,char*,int *,int) ;
 int PMJCR_GET_CORE_MULT (int ,int ) ;
 int ccsr_read4 (int ) ;
 int cpufreq_register (int ) ;
 int device_get_parent (int ) ;
 struct mpc85xx_jog_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 struct ofw_compat_data* mpc85xx_jog_devcompat () ;
 scalar_t__ ofw_bus_get_node (int ) ;

__attribute__((used)) static int
mpc85xx_jog_attach(device_t dev)
{
 struct ofw_compat_data *compat;
 struct mpc85xx_jog_softc *sc;
 struct mpc85xx_constraints *constraints;
 phandle_t cpu;
 uint32_t reg;

 sc = device_get_softc(dev);
 sc->dev = dev;

 compat = mpc85xx_jog_devcompat();
 constraints = (struct mpc85xx_constraints *)compat->ocd_data;
 cpu = ofw_bus_get_node(device_get_parent(dev));

 if (cpu <= 0) {
  device_printf(dev,"No CPU device tree node!\n");
  return (ENXIO);
 }

 OF_getencprop(cpu, "reg", &sc->cpu, sizeof(sc->cpu));

 reg = ccsr_read4(GUTS_PORPLLSR);





 sc->high = PMJCR_GET_CORE_MULT(reg, sc->cpu);
 sc->min_freq = constraints->threshold;
 sc->low = constraints->min_mult;

 cpufreq_register(dev);
 return (0);
}
