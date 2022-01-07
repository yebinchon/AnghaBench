
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KASSERT (int,char*) ;
 int SMCCC_ARCH_WORKAROUND_1 ;
 scalar_t__ SMCCC_VERSION_1_0 ;
 int psci_call (int ,int ,int ,int ) ;
 scalar_t__ smccc_version ;

int
smccc_arch_workaround_1(void)
{

 KASSERT(smccc_version != SMCCC_VERSION_1_0,
     ("SMCCC arch workaround 1 called with an invalid SMCCC interface"));
 return (psci_call(SMCCC_ARCH_WORKAROUND_1, 0, 0, 0));
}
