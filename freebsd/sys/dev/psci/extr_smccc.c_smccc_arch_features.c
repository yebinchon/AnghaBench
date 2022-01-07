
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;


 int PSCI_RETVAL_NOT_SUPPORTED ;
 int SMCCC_ARCH_FEATURES ;
 scalar_t__ SMCCC_VERSION_1_0 ;
 int psci_call (int ,int ,int ,int ) ;
 scalar_t__ smccc_version ;

int32_t
smccc_arch_features(uint32_t smccc_func_id)
{

 if (smccc_version == SMCCC_VERSION_1_0)
  return (PSCI_RETVAL_NOT_SUPPORTED);

 return (psci_call(SMCCC_ARCH_FEATURES, smccc_func_id, 0, 0));
}
