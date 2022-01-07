
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MSR_MC_CTL (int) ;

__attribute__((used)) static unsigned int
mca_ia32_ctl_reg(int bank)
{
 return (MSR_MC_CTL(bank));
}
