
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
typedef int u32 ;
typedef TYPE_1__* hcb_p ;
struct TYPE_3__ {int clock_khz; int clock_divn; int features; } ;


 int FE_C10 ;
 int FE_U3EN ;
 int* div_10M ;

__attribute__((used)) static int
sym_getsync(hcb_p np, u_char dt, u_char sfac, u_char *divp, u_char *fakp)
{
 u32 clk = np->clock_khz;
 int div = np->clock_divn;
 u32 fak;
 u32 per;
 u32 kpc;
 int ret;




 if (dt && sfac <= 9) per = 125;
 else if (sfac <= 10) per = 250;
 else if (sfac == 11) per = 303;
 else if (sfac == 12) per = 500;
 else per = 40 * sfac;
 ret = per;

 kpc = per * clk;
 if (dt)
  kpc <<= 1;
 if ((np->features & (FE_C10|FE_U3EN)) == FE_C10) {




  while (div > 0) {
   --div;
   if (kpc > (div_10M[div] << 2)) {
    ++div;
    break;
   }
  }
  fak = 0;
  if (div == np->clock_divn) {
   ret = -1;
  }
  *divp = div;
  *fakp = fak;
  return ret;
 }






 while (div-- > 0)
  if (kpc >= (div_10M[div] << 2)) break;







 if (dt) {
  fak = (kpc - 1) / (div_10M[div] << 1) + 1 - 2;

 }
 else {
  fak = (kpc - 1) / div_10M[div] + 1 - 4;

 }




 if (fak > 2) {fak = 2; ret = -1;}




 *divp = div;
 *fakp = fak;

 return ret;
}
