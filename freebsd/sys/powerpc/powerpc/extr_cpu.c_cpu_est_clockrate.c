
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint16_t ;
typedef int register_t ;
typedef int phandle_t ;
typedef int cell_t ;
typedef int buf ;


 int DELAY (int) ;
 int ENOENT ;
 int ENXIO ;
 int OF_child (int ) ;
 int OF_getprop (int ,char*,...) ;
 int OF_peer (int ) ;
 int PMC970N_CYCLES ;
 int PMCN_CYCLES ;
 int PSL_EE ;
 int SPR_970MMCR0 ;
 int SPR_970MMCR0_PMC1SEL (int ) ;
 int SPR_970MMCR1 ;
 int SPR_970MMCRA ;
 int SPR_970PMC1 ;
 int SPR_MMCR0 ;
 int SPR_MMCR0_FC ;
 int SPR_MMCR0_PMC1SEL (int ) ;
 int SPR_PMC1 ;
 int isync () ;
 int mfmsr () ;
 int mfpvr () ;
 int mfspr (int ) ;
 int mtmsr (int) ;
 int mtspr (int ,int ) ;
 int powerpc_sync () ;
 int strcmp (char*,char*) ;

int
cpu_est_clockrate(int cpu_id, uint64_t *cps)
{
 uint16_t vers;
 register_t msr;
 phandle_t cpu, dev, root;
 int res = 0;
 char buf[8];

 vers = mfpvr() >> 16;
 msr = mfmsr();
 mtmsr(msr & ~PSL_EE);

 switch (vers) {
  case 131:
  case 130:
  case 129:
  case 128:
  case 139:
  case 135:
  case 134:
  case 133:
  case 132:
   mtspr(SPR_MMCR0, SPR_MMCR0_FC);
   mtspr(SPR_PMC1, 0);
   mtspr(SPR_MMCR0, SPR_MMCR0_PMC1SEL(PMCN_CYCLES));
   DELAY(1000);
   *cps = (mfspr(SPR_PMC1) * 1000) + 4999;
   mtspr(SPR_MMCR0, SPR_MMCR0_FC);

   mtmsr(msr);
   return (0);
  case 138:
  case 137:
  case 136:
   isync();
   mtspr(SPR_970MMCR0, SPR_MMCR0_FC);
   isync();
   mtspr(SPR_970MMCR1, 0);
   mtspr(SPR_970MMCRA, 0);
   mtspr(SPR_970PMC1, 0);
   mtspr(SPR_970MMCR0,
       SPR_970MMCR0_PMC1SEL(PMC970N_CYCLES));
   isync();
   DELAY(1000);
   powerpc_sync();
   mtspr(SPR_970MMCR0, SPR_MMCR0_FC);
   *cps = (mfspr(SPR_970PMC1) * 1000) + 4999;

   mtmsr(msr);
   return (0);

  default:
   root = OF_peer(0);
   if (root == 0)
    return (ENXIO);

   dev = OF_child(root);
   while (dev != 0) {
    res = OF_getprop(dev, "name", buf, sizeof(buf));
    if (res > 0 && strcmp(buf, "cpus") == 0)
     break;
    dev = OF_peer(dev);
   }
   cpu = OF_child(dev);
   while (cpu != 0) {
    res = OF_getprop(cpu, "device_type", buf,
      sizeof(buf));
    if (res > 0 && strcmp(buf, "cpu") == 0)
     break;
    cpu = OF_peer(cpu);
   }
   if (cpu == 0)
    return (ENOENT);
   if (OF_getprop(cpu, "ibm,extended-clock-frequency",
       cps, sizeof(*cps)) >= 0) {
    return (0);
   } else if (OF_getprop(cpu, "clock-frequency", cps,
       sizeof(cell_t)) >= 0) {
    *cps >>= 32;
    return (0);
   } else {
    return (ENOENT);
   }
 }
}
