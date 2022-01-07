
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int ;
typedef int register_t ;


 int HID0_DCE ;
 int HID0_ICE ;

 int L2CR_L2E ;
 int L2CR_L2PE ;
 int L2CR_L2SIZ ;
 int L2CR_L2WT ;



 int L3CR_L3E ;
 int L3CR_L3SIZ ;



 int SPR_HID0 ;
 int SPR_L2CR ;
 int SPR_L3CR ;
 int mfspr (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
cpu_6xx_print_cacheinfo(u_int cpuid, uint16_t vers)
{
 register_t hid;

 hid = mfspr(SPR_HID0);
 printf("cpu%u: ", cpuid);
 printf("L1 I-cache %sabled, ", (hid & HID0_ICE) ? "en" : "dis");
 printf("L1 D-cache %sabled\n", (hid & HID0_DCE) ? "en" : "dis");

 printf("cpu%u: ", cpuid);
   if (mfspr(SPR_L2CR) & L2CR_L2E) {
  switch (vers) {
  case 130:
  case 129:
  case 128:
   printf("256KB L2 cache, ");
   if (mfspr(SPR_L3CR) & L3CR_L3E)
    printf("%cMB L3 backside cache",
        mfspr(SPR_L3CR) & L3CR_L3SIZ ? '2' : '1');
   else
    printf("L3 cache disabled");
   printf("\n");
   break;
  case 134:
   printf("512KB L2 cache\n");
   break;
  default:
   switch (mfspr(SPR_L2CR) & L2CR_L2SIZ) {
   case 132:
    printf("256KB ");
    break;
   case 131:
    printf("512KB ");
    break;
   case 133:
    printf("1MB ");
    break;
   }
   printf("write-%s", (mfspr(SPR_L2CR) & L2CR_L2WT)
       ? "through" : "back");
   if (mfspr(SPR_L2CR) & L2CR_L2PE)
    printf(", with parity");
   printf(" backside cache\n");
   break;
  }
 } else
  printf("L2 cache disabled\n");
}
