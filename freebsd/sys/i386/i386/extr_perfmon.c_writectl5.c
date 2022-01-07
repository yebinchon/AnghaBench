
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int quad_t ;


 int P5FLAG_E ;
 int P5FLAG_OS ;
 int P5FLAG_USR ;
 int PMCF_E ;
 int PMCF_EN ;
 int PMCF_OS ;
 int PMCF_USR ;
 int* ctl_shadow ;
 int * msr_ctl ;
 int wrmsr (int ,int) ;

int
writectl5(int pmc)
{
 quad_t newval = 0;

 if (ctl_shadow[1] & (PMCF_EN << 16)) {
  if (ctl_shadow[1] & (PMCF_USR << 16))
   newval |= P5FLAG_USR << 16;
  if (ctl_shadow[1] & (PMCF_OS << 16))
   newval |= P5FLAG_OS << 16;
  if (!(ctl_shadow[1] & (PMCF_E << 16)))
   newval |= P5FLAG_E << 16;
  newval |= (ctl_shadow[1] & 0x3f) << 16;
 }
 if (ctl_shadow[0] & (PMCF_EN << 16)) {
  if (ctl_shadow[0] & (PMCF_USR << 16))
   newval |= P5FLAG_USR;
  if (ctl_shadow[0] & (PMCF_OS << 16))
   newval |= P5FLAG_OS;
  if (!(ctl_shadow[0] & (PMCF_E << 16)))
   newval |= P5FLAG_E;
  newval |= ctl_shadow[0] & 0x3f;
 }

 wrmsr(msr_ctl[0], newval);
 return 0;
}
