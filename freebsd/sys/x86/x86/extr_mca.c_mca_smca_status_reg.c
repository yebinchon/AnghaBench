
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MSR_SMCA_MC_STATUS (int) ;

__attribute__((used)) static unsigned int
mca_smca_status_reg(int bank)
{
        return (MSR_SMCA_MC_STATUS(bank));
}
