
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysctl_ctx_list {int dummy; } ;
struct TYPE_2__ {int * ich_arg; } ;
struct amdtemp_softc {int sc_ncores; int sc_ntemps; TYPE_1__ sc_ich; int ** sc_sysctl_cpu; } ;
typedef int * device_t ;
typedef int amdsensor_t ;


 int CORE0 ;
 int CORE0_SENSOR0 ;
 int CORE1 ;
 int CTLFLAG_RD ;
 int CTLTYPE_INT ;
 int OID_AUTO ;
 int * SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,int *,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int amdtemp_sysctl ;
 int config_intrhook_disestablish (TYPE_1__*) ;
 int * device_find_child (int *,char*,int) ;
 struct amdtemp_softc* device_get_softc (int *) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int *) ;
 int device_get_sysctl_tree (int *) ;
 int device_get_unit (int *) ;
 int * root_bus ;

void
amdtemp_intrhook(void *arg)
{
 struct amdtemp_softc *sc;
 struct sysctl_ctx_list *sysctlctx;
 device_t dev = (device_t)arg;
 device_t acpi, cpu, nexus;
 amdsensor_t sensor;
 int i;

 sc = device_get_softc(dev);




 nexus = device_find_child(root_bus, "nexus", 0);
 acpi = device_find_child(nexus, "acpi", 0);

 for (i = 0; i < sc->sc_ncores; i++) {
  if (sc->sc_sysctl_cpu[i] != ((void*)0))
   continue;
  cpu = device_find_child(acpi, "cpu",
      device_get_unit(dev) * sc->sc_ncores + i);
  if (cpu != ((void*)0)) {
   sysctlctx = device_get_sysctl_ctx(cpu);

   sensor = sc->sc_ntemps > 1 ?
       (i == 0 ? CORE0 : CORE1) : CORE0_SENSOR0;
   sc->sc_sysctl_cpu[i] = SYSCTL_ADD_PROC(sysctlctx,
       SYSCTL_CHILDREN(device_get_sysctl_tree(cpu)),
       OID_AUTO, "temperature", CTLTYPE_INT | CTLFLAG_RD,
       dev, sensor, amdtemp_sysctl, "IK",
       "Current temparature");
  }
 }
 if (sc->sc_ich.ich_arg != ((void*)0))
  config_intrhook_disestablish(&sc->sc_ich);
}
