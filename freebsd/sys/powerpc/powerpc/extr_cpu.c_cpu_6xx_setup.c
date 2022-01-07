
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int register_t ;


 char* HID0_7450_BITMASK ;
 int HID0_BHT ;
 char* HID0_BITMASK ;
 int HID0_BTIC ;
 int HID0_DBP ;
 int HID0_DOZE ;
 int HID0_DPM ;
 int HID0_EIEC ;
 int HID0_EMCP ;
 int HID0_FOLD ;
 int HID0_LRSTK ;
 int HID0_NAP ;
 int HID0_SGE ;
 int HID0_SLEEP ;
 int HID0_SPD ;
 int SPR_HID0 ;
 scalar_t__ bootverbose ;
 int cpu_6xx_print_cacheinfo (int,int) ;
 int * cpu_idle_60x ;
 int * cpu_idle_hook ;
 int mfpvr () ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;
 int powerpc_pow_enabled ;
 int printf (char*,int,int,char const*) ;

void
cpu_6xx_setup(int cpuid, uint16_t vers)
{
 register_t hid0, pvr;
 const char *bitmask;

 hid0 = mfspr(SPR_HID0);
 pvr = mfpvr();




 switch (vers) {
  case 141:
  case 140:
  case 139:
  case 138:
  case 130:
  case 142:
  case 137:
  case 136:
  case 129:
  case 128:

   hid0 &= ~(HID0_DOZE | HID0_NAP | HID0_SLEEP);
   hid0 |= HID0_DOZE | HID0_DPM;
   powerpc_pow_enabled = 1;
   break;

  case 134:
  case 135:
  case 131:
  case 132:
  case 133:

   hid0 |= HID0_SGE | HID0_BTIC;
   hid0 |= HID0_LRSTK | HID0_FOLD | HID0_BHT;

   if (((pvr >> 16) == 133 && (pvr & 0xFFFF) <= 0x0200)
     || (pvr >> 16) == 131)
    hid0 &= ~HID0_BTIC;

   hid0 &= ~(HID0_DOZE | HID0_NAP | HID0_SLEEP);
   hid0 |= HID0_NAP | HID0_DPM;
   powerpc_pow_enabled = 1;
   break;

  default:
                                            ;
 }

 switch (vers) {
  case 142:
  case 130:
   hid0 &= ~HID0_DBP;
   hid0 |= HID0_EMCP | HID0_BTIC | HID0_SGE | HID0_BHT;
   break;

  case 137:
  case 136:
   hid0 &= ~HID0_SPD;
   hid0 |= HID0_EMCP | HID0_BTIC | HID0_SGE | HID0_BHT;
   hid0 |= HID0_EIEC;
   break;

 }

 mtspr(SPR_HID0, hid0);

 if (bootverbose)
  cpu_6xx_print_cacheinfo(cpuid, vers);

 switch (vers) {
  case 135:
  case 134:
  case 133:
  case 132:
  case 131:
   bitmask = HID0_7450_BITMASK;
   break;
  default:
   bitmask = HID0_BITMASK;
   break;
 }

 printf("cpu%d: HID0 %b\n", cpuid, (int)hid0, bitmask);

 if (cpu_idle_hook == ((void*)0))
  cpu_idle_hook = cpu_idle_60x;
}
