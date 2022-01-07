
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct tpm_sc {int dummy; } ;


 scalar_t__ MIN (scalar_t__,size_t) ;
 int TPM_DATA_FIFO ;
 int WR1 (struct tpm_sc*,int ,int ) ;
 scalar_t__ tpmtis_wait_for_burst (struct tpm_sc*) ;

__attribute__((used)) static bool
tpmtis_write_bytes(struct tpm_sc *sc, size_t count, uint8_t *buf)
{
 uint16_t burst_count;

 while (count > 0) {
  burst_count = tpmtis_wait_for_burst(sc);
  if (burst_count == 0)
   return (0);

  burst_count = MIN(burst_count, count);
  count -= burst_count;

  while (burst_count-- > 0)
   WR1(sc, TPM_DATA_FIFO, *buf++);
 }

 return (1);
}
