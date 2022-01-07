
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PMCF_EN ;
 int* ctl_shadow ;
 int * msr_ctl ;
 int wrmsr (int ,int) ;

int
writectl6(int pmc)
{
 if (pmc > 0 && !(ctl_shadow[pmc] & (PMCF_EN << 16))) {
  wrmsr(msr_ctl[pmc], 0);
 } else {
  wrmsr(msr_ctl[pmc], ctl_shadow[pmc]);
 }
 return 0;
}
