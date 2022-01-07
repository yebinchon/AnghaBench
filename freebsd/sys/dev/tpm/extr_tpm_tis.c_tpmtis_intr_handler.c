
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tpm_sc {int intr_type; } ;


 int RD4 (struct tpm_sc*,int ) ;
 int TPM_INT_STS ;
 int WR4 (struct tpm_sc*,int ,int) ;
 int wakeup (struct tpm_sc*) ;

__attribute__((used)) static void
tpmtis_intr_handler(void *arg)
{
 struct tpm_sc *sc;
 uint32_t status;

 sc = (struct tpm_sc *)arg;
 status = RD4(sc, TPM_INT_STS);

 WR4(sc, TPM_INT_STS, status);
 if (sc->intr_type != -1 && sc->intr_type & status)
  wakeup(sc);
}
