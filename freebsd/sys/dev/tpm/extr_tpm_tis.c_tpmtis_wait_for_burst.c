
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct tpm_sc {int dummy; } ;


 int DELAY (int) ;
 int RD4 (struct tpm_sc*,int ) ;
 int TPM_STS ;
 int TPM_STS_BURST_MASK ;
 int TPM_STS_BURST_OFFSET ;
 int TPM_TIMEOUT_A ;

__attribute__((used)) static uint16_t
tpmtis_wait_for_burst(struct tpm_sc *sc)
{
 int timeout;
 uint16_t burst_count;

 timeout = TPM_TIMEOUT_A;

 while (timeout-- > 0) {
  burst_count = (RD4(sc, TPM_STS) & TPM_STS_BURST_MASK) >>
      TPM_STS_BURST_OFFSET;
  if (burst_count > 0)
   break;

  DELAY(1);
 }
 return (burst_count);
}
