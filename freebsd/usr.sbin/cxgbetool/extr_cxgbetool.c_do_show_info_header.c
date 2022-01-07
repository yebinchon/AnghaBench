
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;




 int T4_FILTER_IC_VNIC ;
 int printf (char*,...) ;

__attribute__((used)) static void
do_show_info_header(uint32_t mode)
{
 uint32_t i;

 printf("%4s %8s", "Idx", "Hits");
 for (i = 136; i <= 135; i <<= 1) {
  switch (mode & i) {
  case 136:
   printf(" FCoE");
   break;

  case 130:
   printf(" Port");
   break;

  case 128:
   if (mode & T4_FILTER_IC_VNIC)
    printf("   VFvld:PF:VF");
   else
    printf("     vld:oVLAN");
   break;

  case 129:
   printf("      vld:VLAN");
   break;

  case 133:
   printf("   TOS");
   break;

  case 134:
   printf("  Prot");
   break;

  case 137:
   printf("   EthType");
   break;

  case 132:
   printf("  MACIdx");
   break;

  case 131:
   printf(" MPS");
   break;

  case 135:
   printf(" Frag");
   break;

  default:

   break;
  }
 }
 printf(" %20s %20s %9s %9s %s\n",
     "DIP", "SIP", "DPORT", "SPORT", "Action");
}
