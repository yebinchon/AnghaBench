
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pcr_softc {int nmodes; int * pcr_vals; int dev; } ;
typedef scalar_t__ phandle_t ;
typedef int modes ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ OF_child (int ) ;
 int OF_getprop (scalar_t__,char*,int *,int) ;
 scalar_t__ OF_getproplen (scalar_t__,char*) ;
 int OF_parent (scalar_t__) ;
 size_t PCR_TO_FREQ (int ) ;
 int cpufreq_register (int ) ;
 int device_get_parent (int ) ;
 struct pcr_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ ofw_bus_get_node (int ) ;

__attribute__((used)) static int
pcr_attach(device_t dev)
{
 struct pcr_softc *sc;
 phandle_t cpu;
 uint32_t modes[3];
 int i;

 sc = device_get_softc(dev);
 sc->dev = dev;

 cpu = ofw_bus_get_node(device_get_parent(dev));

 if (cpu <= 0) {
  device_printf(dev,"No CPU device tree node!\n");
  return (ENXIO);
 }

 if (OF_getproplen(cpu, "power-mode-data") <= 0) {

  cpu = OF_child(OF_parent(cpu));
 }






 sc->nmodes = OF_getproplen(cpu, "power-mode-data");
 if (sc->nmodes <= 0 || sc->nmodes > sizeof(sc->pcr_vals)) {
  device_printf(dev,"No power mode data in device tree!\n");
  return (ENXIO);
 }
 OF_getprop(cpu, "power-mode-data", modes, sc->nmodes);
 sc->nmodes /= sizeof(modes[0]);


 for (i = 0; i < sc->nmodes; i++)
  sc->pcr_vals[PCR_TO_FREQ(modes[i])] = modes[i];

 cpufreq_register(dev);
 return (0);
}
