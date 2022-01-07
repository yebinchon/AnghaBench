
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
typedef int tn ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_2__ {int ich_arg; int (* ich_func ) (int ) ;} ;
struct amdtemp_softc {int sc_ntemps; int sc_ncores; TYPE_1__ sc_ich; int sc_offset; int * sc_smn; int sc_gettemp; int sc_flags; } ;
struct amdtemp_product {scalar_t__ amdtemp_has_cpuid; } ;
typedef int device_t ;


 int AMDID2_CMP ;
 int AMDID_CMP_CORES ;
 int AMDTEMP_CPUID ;
 int AMDTEMP_DRAM_CONF_HIGH ;
 int AMDTEMP_DRAM_MODE_DDR3 ;
 int AMDTEMP_FLAG_ALT_OFFSET ;
 int AMDTEMP_FLAG_CS_SWAP ;
 int AMDTEMP_FLAG_CT_10BIT ;
 int CORE0_SENSOR0 ;
 int CORE0_SENSOR1 ;
 int CORE1_SENSOR0 ;
 int CORE1_SENSOR1 ;
 int CPUID_STEPPING ;
 int CPUID_TO_FAMILY (int) ;
 int CPUID_TO_MODEL (int) ;
 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int ENXIO ;
 int MAXCPU ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,int ,int ,char*,int ,int *,int ,char*) ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,int ,int ,char*,int,int ,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,int ,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int TUNABLE_INT_FETCH (char*,int *) ;
 int amd_feature2 ;
 int amdtemp_gettemp ;
 int amdtemp_gettemp0f ;
 int amdtemp_gettemp15hm60h ;
 int amdtemp_gettemp17h ;
 int amdtemp_intrhook (int ) ;
 int amdtemp_match (int ,struct amdtemp_product const**) ;
 int amdtemp_sysctl ;
 scalar_t__ bootverbose ;
 scalar_t__ config_intrhook_establish (TYPE_1__*) ;
 int cpu_id ;
 int cpu_procinfo2 ;
 int * device_find_child (int ,char*,int) ;
 int device_get_parent (int ) ;
 struct amdtemp_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int do_cpuid (int,int*) ;
 int pci_cfgregread (int ,int ,int,int ,int) ;
 int pci_get_bus (int ) ;
 int pci_get_slot (int ) ;
 int pci_read_config (int ,int ,int) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int
amdtemp_attach(device_t dev)
{
 char tn[32];
 u_int regs[4];
 const struct amdtemp_product *product;
 struct amdtemp_softc *sc;
 struct sysctl_ctx_list *sysctlctx;
 struct sysctl_oid *sysctlnode;
 uint32_t cpuid, family, model;
 u_int bid;
 int erratum319, unit;
 bool needsmn;

 sc = device_get_softc(dev);
 erratum319 = 0;
 needsmn = 0;

 if (!amdtemp_match(device_get_parent(dev), &product))
  return (ENXIO);

 cpuid = cpu_id;
 family = CPUID_TO_FAMILY(cpuid);
 model = CPUID_TO_MODEL(cpuid);
 if (product->amdtemp_has_cpuid && (family > 0x0f ||
     (family == 0x0f && model >= 0x40))) {
  cpuid = pci_read_config(device_get_parent(dev), AMDTEMP_CPUID,
      4);
  family = CPUID_TO_FAMILY(cpuid);
  model = CPUID_TO_MODEL(cpuid);
 }

 switch (family) {
 case 0x0f:
  if (model >= 0x40)
   sc->sc_flags |= AMDTEMP_FLAG_CS_SWAP;
  if (model >= 0x60 && model != 0xc1) {
   do_cpuid(0x80000001, regs);
   bid = (regs[1] >> 9) & 0x1f;
   switch (model) {
   case 0x68:
   case 0x6c:
   case 0x7c:
    break;
   case 0x6b:
    if (bid != 0x0b && bid != 0x0c)
     sc->sc_flags |=
         AMDTEMP_FLAG_ALT_OFFSET;
    break;
   case 0x6f:
   case 0x7f:
    if (bid != 0x07 && bid != 0x09 &&
        bid != 0x0c)
     sc->sc_flags |=
         AMDTEMP_FLAG_ALT_OFFSET;
    break;
   default:
    sc->sc_flags |= AMDTEMP_FLAG_ALT_OFFSET;
   }
   sc->sc_flags |= AMDTEMP_FLAG_CT_10BIT;
  }




  sc->sc_ntemps = 2;

  sc->sc_gettemp = amdtemp_gettemp0f;
  break;
 case 0x10:





  do_cpuid(0x80000001, regs);
  switch ((regs[1] >> 28) & 0xf) {
  case 0:
   erratum319 = 1;
   break;
  case 1:
   if ((pci_cfgregread(pci_get_bus(dev),
       pci_get_slot(dev), 2, AMDTEMP_DRAM_CONF_HIGH, 2) &
       AMDTEMP_DRAM_MODE_DDR3) != 0 || model > 0x04 ||
       (model == 0x04 && (cpuid & CPUID_STEPPING) >= 3))
    break;

   erratum319 = 1;
   break;
  }

 case 0x11:
 case 0x12:
 case 0x14:
 case 0x15:
 case 0x16:
  sc->sc_ntemps = 1;






  if (family == 0x15 && model >= 0x60) {
   sc->sc_gettemp = amdtemp_gettemp15hm60h;
   needsmn = 1;
  } else
   sc->sc_gettemp = amdtemp_gettemp;
  break;
 case 0x17:
  sc->sc_ntemps = 1;
  sc->sc_gettemp = amdtemp_gettemp17h;
  needsmn = 1;
  break;
 default:
  device_printf(dev, "Bogus family 0x%x\n", family);
  return (ENXIO);
 }

 if (needsmn) {
  sc->sc_smn = device_find_child(
      device_get_parent(dev), "amdsmn", -1);
  if (sc->sc_smn == ((void*)0)) {
   if (bootverbose)
    device_printf(dev, "No SMN device found\n");
   return (ENXIO);
  }
 }


 sc->sc_ncores = (amd_feature2 & AMDID2_CMP) != 0 ?
     (cpu_procinfo2 & AMDID_CMP_CORES) + 1 : 1;
 if (sc->sc_ncores > MAXCPU)
  return (ENXIO);

 if (erratum319)
  device_printf(dev,
      "Erratum 319: temperature measurement may be inaccurate\n");
 if (bootverbose)
  device_printf(dev, "Found %d cores and %d sensors.\n",
      sc->sc_ncores,
      sc->sc_ntemps > 1 ? sc->sc_ntemps * sc->sc_ncores : 1);




 unit = device_get_unit(dev);
 snprintf(tn, sizeof(tn), "dev.amdtemp.%d.sensor_offset", unit);
 TUNABLE_INT_FETCH(tn, &sc->sc_offset);

 sysctlctx = device_get_sysctl_ctx(dev);
 SYSCTL_ADD_INT(sysctlctx,
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO,
     "sensor_offset", CTLFLAG_RW, &sc->sc_offset, 0,
     "Temperature sensor offset");
 sysctlnode = SYSCTL_ADD_NODE(sysctlctx,
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO,
     "core0", CTLFLAG_RD, 0, "Core 0");

 SYSCTL_ADD_PROC(sysctlctx,
     SYSCTL_CHILDREN(sysctlnode),
     OID_AUTO, "sensor0", CTLTYPE_INT | CTLFLAG_RD,
     dev, CORE0_SENSOR0, amdtemp_sysctl, "IK",
     "Core 0 / Sensor 0 temperature");

 if (sc->sc_ntemps > 1) {
  SYSCTL_ADD_PROC(sysctlctx,
      SYSCTL_CHILDREN(sysctlnode),
      OID_AUTO, "sensor1", CTLTYPE_INT | CTLFLAG_RD,
      dev, CORE0_SENSOR1, amdtemp_sysctl, "IK",
      "Core 0 / Sensor 1 temperature");

  if (sc->sc_ncores > 1) {
   sysctlnode = SYSCTL_ADD_NODE(sysctlctx,
       SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
       OID_AUTO, "core1", CTLFLAG_RD, 0, "Core 1");

   SYSCTL_ADD_PROC(sysctlctx,
       SYSCTL_CHILDREN(sysctlnode),
       OID_AUTO, "sensor0", CTLTYPE_INT | CTLFLAG_RD,
       dev, CORE1_SENSOR0, amdtemp_sysctl, "IK",
       "Core 1 / Sensor 0 temperature");

   SYSCTL_ADD_PROC(sysctlctx,
       SYSCTL_CHILDREN(sysctlnode),
       OID_AUTO, "sensor1", CTLTYPE_INT | CTLFLAG_RD,
       dev, CORE1_SENSOR1, amdtemp_sysctl, "IK",
       "Core 1 / Sensor 1 temperature");
  }
 }






 amdtemp_intrhook(dev);
 sc->sc_ich.ich_func = amdtemp_intrhook;
 sc->sc_ich.ich_arg = dev;
 if (config_intrhook_establish(&sc->sc_ich) != 0) {
  device_printf(dev, "config_intrhook_establish failed!\n");
  return (ENXIO);
 }

 return (0);
}
