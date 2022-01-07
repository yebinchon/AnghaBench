
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tpm_sc {int dev; } ;


 int TPM_CRB_CTRL_CANCEL ;
 int TPM_CRB_CTRL_CANCEL_CMD ;
 int TPM_CRB_CTRL_START ;
 int TPM_TIMEOUT_B ;
 int WR4 (struct tpm_sc*,int ,int) ;
 int device_printf (int ,char*) ;
 int tpm_wait_for_u32 (struct tpm_sc*,int ,int ,int ,int ) ;

__attribute__((used)) static bool
tpmcrb_cancel_cmd(struct tpm_sc *sc)
{
 uint32_t mask = ~0;

 WR4(sc, TPM_CRB_CTRL_CANCEL, TPM_CRB_CTRL_CANCEL_CMD);
 if (!tpm_wait_for_u32(sc, TPM_CRB_CTRL_START,
      mask, ~mask, TPM_TIMEOUT_B)) {
  device_printf(sc->dev,
      "Device failed to cancel command\n");
  return (0);
 }

 WR4(sc, TPM_CRB_CTRL_CANCEL, !TPM_CRB_CTRL_CANCEL_CMD);
 return (1);
}
