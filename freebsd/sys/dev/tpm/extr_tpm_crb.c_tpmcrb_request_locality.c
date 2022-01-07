
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tpm_sc {int dummy; } ;


 int OR4 (struct tpm_sc*,int ,int ) ;
 int TPM_LOC_CTRL ;
 int TPM_LOC_CTRL_REQUEST ;
 int TPM_LOC_STATE ;
 int TPM_LOC_STATE_ASSIGNED ;
 int TPM_LOC_STATE_VALID ;
 int TPM_TIMEOUT_C ;
 int tpm_wait_for_u32 (struct tpm_sc*,int ,int,int,int ) ;

__attribute__((used)) static bool
tpmcrb_request_locality(struct tpm_sc *sc, int locality)
{
 uint32_t mask;


 if (locality != 0)
  return (0);

 mask = TPM_LOC_STATE_VALID | TPM_LOC_STATE_ASSIGNED;

 OR4(sc, TPM_LOC_CTRL, TPM_LOC_CTRL_REQUEST);
 if (!tpm_wait_for_u32(sc, TPM_LOC_STATE, mask, mask, TPM_TIMEOUT_C))
  return (0);

 return (1);
}
