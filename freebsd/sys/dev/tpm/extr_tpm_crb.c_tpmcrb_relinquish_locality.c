
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_sc {int dummy; } ;


 int OR4 (struct tpm_sc*,int ,int ) ;
 int TPM_LOC_CTRL ;
 int TPM_LOC_CTRL_RELINQUISH ;

__attribute__((used)) static void
tpmcrb_relinquish_locality(struct tpm_sc *sc)
{

 OR4(sc, TPM_LOC_CTRL, TPM_LOC_CTRL_RELINQUISH);
}
