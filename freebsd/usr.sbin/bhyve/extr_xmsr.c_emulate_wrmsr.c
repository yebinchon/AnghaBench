
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct vmctx {int dummy; } ;
 scalar_t__ cpu_vendor_amd ;
 scalar_t__ cpu_vendor_intel ;

int
emulate_wrmsr(struct vmctx *ctx, int vcpu, uint32_t num, uint64_t val)
{

 if (cpu_vendor_intel) {
  switch (num) {
  case 0xd04:
  case 0xc24:
   return (0);
  case 141:
   return (0);
  case 142:
   return (0);
  default:
   break;
  }
 } else if (cpu_vendor_amd) {
  switch (num) {
  case 140:



   return (0);

  case 133:
  case 134:
  case 139:
   return (0);

  case 132:
  case 131:
  case 130:
  case 129:

   return (0);

  case 138:
  case 137:
  case 136:
  case 135:

   return (0);

  case 128:

   return (0);

  default:
   break;
  }
 }
 return (-1);
}
