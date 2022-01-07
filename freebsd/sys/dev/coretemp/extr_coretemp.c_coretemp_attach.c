
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct coretemp_softc {int sc_tjmax; int sc_dev; } ;
typedef int device_t ;


 int CORETEMP_DELTA ;
 int CORETEMP_RESOLUTION ;
 int CORETEMP_TEMP ;
 int CORETEMP_TJMAX ;
 int CPUID_STEPPING ;
 int CPUID_TO_MODEL (int) ;
 int CTLFLAG_MPSAFE ;
 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int ENXIO ;
 int MSR_BIOS_SIGN ;
 int MSR_IA32_EXT_CONFIG ;
 int MSR_IA32_TEMPERATURE_TARGET ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,int ,int ,char*,int,int *,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,int ,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 scalar_t__ bootverbose ;
 int coretemp_get_val_sysctl ;
 int coretemp_throttle_log_sysctl ;
 int cpu_id ;
 int device_get_parent (int ) ;
 struct coretemp_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*,...) ;
 int rdmsr (int ) ;
 int rdmsr_safe (int ,int*) ;

__attribute__((used)) static int
coretemp_attach(device_t dev)
{
 struct coretemp_softc *sc = device_get_softc(dev);
 device_t pdev;
 uint64_t msr;
 int cpu_model, cpu_stepping;
 int ret, tjtarget;
 struct sysctl_oid *oid;
 struct sysctl_ctx_list *ctx;

 sc->sc_dev = dev;
 pdev = device_get_parent(dev);
 cpu_model = CPUID_TO_MODEL(cpu_id);
 cpu_stepping = cpu_id & CPUID_STEPPING;







 if (cpu_model < 0xe)
  return (ENXIO);
 sc->sc_tjmax = 100;

 if ((cpu_model == 0xf && cpu_stepping >= 2) || cpu_model == 0xe) {







  msr = rdmsr(MSR_IA32_EXT_CONFIG);
  if (msr & (1 << 30))
   sc->sc_tjmax = 85;
 } else if (cpu_model == 0x17) {
  switch (cpu_stepping) {
  case 0x6:
   sc->sc_tjmax = 105;
   break;
  default:
   break;
  }
 } else if (cpu_model == 0x1c) {
  switch (cpu_stepping) {
  case 0xa:
   sc->sc_tjmax = 100;
   break;
  default:
   sc->sc_tjmax = 90;
   break;
  }
 } else {






  ret = rdmsr_safe(MSR_IA32_TEMPERATURE_TARGET, &msr);
  if (ret == 0) {
   tjtarget = (msr >> 16) & 0xff;
   if (tjtarget >= 70 && tjtarget <= 110)
    sc->sc_tjmax = tjtarget;
   else
    device_printf(dev, "Tj(target) value %d "
        "does not seem right.\n", tjtarget);
  } else
   device_printf(dev, "Can not get Tj(target) "
       "from your CPU, using 100C.\n");
 }

 if (bootverbose)
  device_printf(dev, "Setting TjMax=%d\n", sc->sc_tjmax);

 ctx = device_get_sysctl_ctx(dev);

 oid = SYSCTL_ADD_NODE(ctx,
     SYSCTL_CHILDREN(device_get_sysctl_tree(pdev)), OID_AUTO,
     "coretemp", CTLFLAG_RD, ((void*)0), "Per-CPU thermal information");




 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(device_get_sysctl_tree(pdev)),
     OID_AUTO, "temperature", CTLTYPE_INT | CTLFLAG_RD | CTLFLAG_MPSAFE,
     dev, CORETEMP_TEMP, coretemp_get_val_sysctl, "IK",
     "Current temperature");
 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(oid), OID_AUTO, "delta",
     CTLTYPE_INT | CTLFLAG_RD | CTLFLAG_MPSAFE, dev, CORETEMP_DELTA,
     coretemp_get_val_sysctl, "I",
     "Delta between TCC activation and current temperature");
 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(oid), OID_AUTO, "resolution",
     CTLTYPE_INT | CTLFLAG_RD | CTLFLAG_MPSAFE, dev, CORETEMP_RESOLUTION,
     coretemp_get_val_sysctl, "I",
     "Resolution of CPU thermal sensor");
 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(oid), OID_AUTO, "tjmax",
     CTLTYPE_INT | CTLFLAG_RD | CTLFLAG_MPSAFE, dev, CORETEMP_TJMAX,
     coretemp_get_val_sysctl, "IK",
     "TCC activation temperature");
 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
     "throttle_log", CTLTYPE_INT | CTLFLAG_RW | CTLFLAG_MPSAFE, dev, 0,
     coretemp_throttle_log_sysctl, "I",
     "Set to 1 if the thermal sensor has tripped");

 return (0);
}
