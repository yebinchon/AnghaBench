
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ int32_t ;


 scalar_t__ PSCI_RETVAL_NOT_SUPPORTED ;
 int SMCCC_VERSION ;
 int SMCCC_VERSION_MAJOR (scalar_t__) ;
 int SMCCC_VERSION_MINOR (scalar_t__) ;
 scalar_t__ bootverbose ;
 int printf (char*,int,int) ;
 scalar_t__ psci_call (int ,int ,int ,int ) ;
 scalar_t__ psci_features (int ) ;
 scalar_t__ smccc_version ;

__attribute__((used)) static void
smccc_init(void *dummy)
{
 int32_t features;
 uint32_t ret;

 features = psci_features(SMCCC_VERSION);
 if (features != PSCI_RETVAL_NOT_SUPPORTED) {
  ret = psci_call(SMCCC_VERSION, 0, 0, 0);

  if (ret > 0)
   smccc_version = ret;
 }

 if (bootverbose) {
  printf("Found SMCCC version %u.%u\n",
      SMCCC_VERSION_MAJOR(smccc_version),
      SMCCC_VERSION_MINOR(smccc_version));
 }
}
