
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct cpufreq_dt_softc {int clk; int cpus; int reg; int dev; } ;
typedef scalar_t__ phandle_t ;
typedef int opp ;
typedef enum opp_version { ____Placeholder_opp_version } opp_version ;
typedef int device_t ;
typedef int copp ;


 int CPU_SET (int,int *) ;
 int CPU_ZERO (int *) ;
 int ENXIO ;
 int OF_getencprop (scalar_t__,char*,scalar_t__*,int) ;
 scalar_t__ OF_hasprop (scalar_t__,char*) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int OPP_V1 ;
 int OPP_V2 ;
 scalar_t__ clk_get_by_ofw_index (int ,scalar_t__,int ,int *) ;
 scalar_t__ clk_get_freq (int ,int *) ;
 int cpufreq_dt_notify (int ,int ) ;
 int cpufreq_dt_oppv1_parse (struct cpufreq_dt_softc*,scalar_t__) ;
 int cpufreq_dt_oppv2_parse (struct cpufreq_dt_softc*,scalar_t__) ;
 int cpufreq_register (int ) ;
 int device_get_parent (int ) ;
 struct cpufreq_dt_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int ofw_bus_get_name (int ) ;
 scalar_t__ ofw_bus_get_node (int ) ;
 scalar_t__ regulator_get_by_ofw_property (int ,scalar_t__,char*,int *) ;
 int regulator_release (int ) ;

__attribute__((used)) static int
cpufreq_dt_attach(device_t dev)
{
 struct cpufreq_dt_softc *sc;
 phandle_t node;
 phandle_t cnode, opp, copp;
 int cpu;
 uint64_t freq;
 int rv = 0;
 enum opp_version version;

 sc = device_get_softc(dev);
 sc->dev = dev;
 node = ofw_bus_get_node(device_get_parent(dev));

 if (regulator_get_by_ofw_property(dev, node,
     "cpu-supply", &sc->reg) != 0) {
  if (regulator_get_by_ofw_property(dev, node,
      "cpu0-supply", &sc->reg) != 0) {
   device_printf(dev, "no regulator for %s\n",
       ofw_bus_get_name(device_get_parent(dev)));
   return (ENXIO);
  }
 }

 if (clk_get_by_ofw_index(dev, node, 0, &sc->clk) != 0) {
  device_printf(dev, "no clock for %s\n",
      ofw_bus_get_name(device_get_parent(dev)));
  regulator_release(sc->reg);
  return (ENXIO);
 }

 if (OF_hasprop(node, "operating-points")) {
  version = OPP_V1;
  rv = cpufreq_dt_oppv1_parse(sc, node);
  if (rv != 0) {
   device_printf(dev, "Failed to parse opp-v1 table\n");
   return (rv);
  }
  OF_getencprop(node, "operating-points", &opp,
      sizeof(opp));
 } else {
  version = OPP_V2;
  rv = cpufreq_dt_oppv2_parse(sc, node);
  if (rv != 0) {
   device_printf(dev, "Failed to parse opp-v2 table\n");
   return (rv);
  }
  OF_getencprop(node, "operating-points-v2", &opp,
      sizeof(opp));
 }




 CPU_ZERO(&sc->cpus);
 cpu = device_get_unit(device_get_parent(dev));
 for (cnode = node; cnode > 0; cnode = OF_peer(cnode), cpu++) {
  copp = -1;
  if (version == OPP_V1)
   OF_getencprop(cnode, "operating-points", &copp,
       sizeof(copp));
  else if (version == OPP_V2)
   OF_getencprop(cnode, "operating-points-v2",
       &copp, sizeof(copp));
  if (opp == copp)
   CPU_SET(cpu, &sc->cpus);
 }

 if (clk_get_freq(sc->clk, &freq) == 0)
  cpufreq_dt_notify(dev, freq);

 cpufreq_register(dev);

 return (0);
}
