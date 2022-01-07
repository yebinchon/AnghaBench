
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef unsigned int uint32_t ;
struct TYPE_2__ {unsigned int pf_srn; } ;
struct octeon_device {unsigned int num_iqs; TYPE_1__ sriov_info; } ;


 int volatile BIT_ULL (unsigned int) ;
 int volatile LIO_CN23XX_PKT_INPUT_CTL_RING_ENB ;
 int volatile LIO_CN23XX_PKT_INPUT_CTL_RST ;
 int LIO_CN23XX_SLI_IQ_DOORBELL (unsigned int) ;
 int LIO_CN23XX_SLI_IQ_PKT_CONTROL64 (unsigned int) ;
 int LIO_CN23XX_SLI_OQ_PKTS_CREDIT (unsigned int) ;
 int LIO_CN23XX_SLI_OQ_PKTS_SENT (unsigned int) ;
 int LIO_CN23XX_SLI_PKT_IOQ_RING_RST ;
 int lio_ms_to_ticks (int) ;
 unsigned int lio_read_csr32 (struct octeon_device*,int ) ;
 unsigned long long lio_read_csr64 (struct octeon_device*,int ) ;
 int lio_sleep_timeout (int) ;
 int lio_write_csr32 (struct octeon_device*,int ,unsigned int volatile) ;
 int lio_write_csr64 (struct octeon_device*,int ,int volatile) ;

__attribute__((used)) static void
lio_cn23xx_pf_disable_io_queues(struct octeon_device *oct)
{
 volatile uint64_t d64;
 volatile uint32_t d32;
 int loop;
 unsigned int q_no;
 uint32_t ern, srn;

 srn = oct->sriov_info.pf_srn;
 ern = srn + oct->num_iqs;


 for (q_no = srn; q_no < ern; q_no++) {
  loop = lio_ms_to_ticks(1000);


  d64 = lio_read_csr64(oct,
         LIO_CN23XX_SLI_IQ_PKT_CONTROL64(q_no));
  d64 &= ~LIO_CN23XX_PKT_INPUT_CTL_RING_ENB;
  d64 |= LIO_CN23XX_PKT_INPUT_CTL_RST;
  lio_write_csr64(oct, LIO_CN23XX_SLI_IQ_PKT_CONTROL64(q_no),
    d64);





  d64 = lio_read_csr64(oct, LIO_CN23XX_SLI_PKT_IOQ_RING_RST);
  while (!(d64 & BIT_ULL(q_no)) && loop--) {
   d64 = lio_read_csr64(oct,
          LIO_CN23XX_SLI_PKT_IOQ_RING_RST);
   lio_sleep_timeout(1);
   loop--;
  }


  lio_write_csr32(oct, LIO_CN23XX_SLI_IQ_DOORBELL(q_no),
    0xFFFFFFFF);
  while (((lio_read_csr64(oct,
     LIO_CN23XX_SLI_IQ_DOORBELL(q_no))) !=
   0ULL) && loop--) {
   lio_sleep_timeout(1);
  }
 }


 for (q_no = srn; q_no < ern; q_no++) {
  loop = lio_ms_to_ticks(1000);






  d64 = lio_read_csr64(oct, LIO_CN23XX_SLI_PKT_IOQ_RING_RST);
  while (!(d64 & BIT_ULL(q_no)) && loop--) {
   d64 = lio_read_csr64(oct,
          LIO_CN23XX_SLI_PKT_IOQ_RING_RST);
   lio_sleep_timeout(1);
   loop--;
  }


  lio_write_csr32(oct, LIO_CN23XX_SLI_OQ_PKTS_CREDIT(q_no),
    0xFFFFFFFF);
  while ((lio_read_csr64(oct,
           LIO_CN23XX_SLI_OQ_PKTS_CREDIT(q_no)) !=
   0ULL) && loop--) {
   lio_sleep_timeout(1);
  }


  d32 = lio_read_csr32(oct, LIO_CN23XX_SLI_OQ_PKTS_SENT(q_no));
  lio_write_csr32(oct, LIO_CN23XX_SLI_OQ_PKTS_SENT(q_no), d32);
 }
}
