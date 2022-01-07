
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_sc {scalar_t__ interrupts; } ;


 int AND4 (struct tpm_sc*,int ,int ) ;
 int OR1 (struct tpm_sc*,int ,int ) ;
 int RD4 (struct tpm_sc*,int ) ;
 int TPM_ACCESS ;
 int TPM_ACCESS_LOC_RELINQUISH ;
 int TPM_INT_STS ;

__attribute__((used)) static void
tpmtis_relinquish_locality(struct tpm_sc *sc)
{





 if(sc->interrupts)
  AND4(sc, TPM_INT_STS, RD4(sc, TPM_INT_STS));

 OR1(sc, TPM_ACCESS, TPM_ACCESS_LOC_RELINQUISH);
}
