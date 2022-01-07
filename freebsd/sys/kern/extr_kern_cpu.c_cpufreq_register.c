
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_softc {int max_mhz; } ;
typedef int * device_t ;


 int * BUS_ADD_CHILD (int *,int ,char*,int) ;
 int CPUFREQ_VAL_UNKNOWN ;
 int CTLFLAG_RD ;
 int CTLTYPE_STRING ;
 int ENOMEM ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (int ,int ,int ,char*,int,int *,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int cpufreq_settings_sysctl ;
 int * device_find_child (int *,char*,int) ;
 int * device_get_parent (int *) ;
 struct cpufreq_softc* device_get_softc (int *) ;
 int device_get_sysctl_ctx (int *) ;
 int device_get_sysctl_tree (int *) ;
 int device_probe_and_attach (int *) ;
 int device_quiet (int *) ;

int
cpufreq_register(device_t dev)
{
 struct cpufreq_softc *sc;
 device_t cf_dev, cpu_dev;


 SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
     OID_AUTO, "freq_settings", CTLTYPE_STRING | CTLFLAG_RD, dev, 0,
     cpufreq_settings_sysctl, "A", "CPU frequency driver settings");





 cpu_dev = device_get_parent(dev);
 if ((cf_dev = device_find_child(cpu_dev, "cpufreq", -1))) {
  sc = device_get_softc(cf_dev);
  sc->max_mhz = CPUFREQ_VAL_UNKNOWN;
  return (0);
 }


 cf_dev = BUS_ADD_CHILD(cpu_dev, 0, "cpufreq", -1);
 if (cf_dev == ((void*)0))
  return (ENOMEM);
 device_quiet(cf_dev);

 return (device_probe_and_attach(cf_dev));
}
