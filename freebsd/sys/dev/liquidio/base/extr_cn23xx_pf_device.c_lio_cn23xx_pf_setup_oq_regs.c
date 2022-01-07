
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef size_t uint32_t ;
struct TYPE_2__ {scalar_t__ pf_srn; } ;
struct octeon_device {int msix_on; TYPE_1__ sriov_info; scalar_t__ chip; struct lio_droq** droq; } ;
struct lio_droq {int desc_ring_dma; size_t max_count; size_t buffer_size; int pkts_credit_reg; int pkts_sent_reg; } ;
struct lio_cn23xx_pf {int conf; } ;


 size_t LIO_CN23XX_PKT_OUTPUT_CTL_CENB ;
 size_t LIO_CN23XX_PKT_OUTPUT_CTL_TENB ;
 int LIO_CN23XX_SLI_OQ_BASE_ADDR64 (size_t) ;
 int LIO_CN23XX_SLI_OQ_BUFF_INFO_SIZE (size_t) ;
 int LIO_CN23XX_SLI_OQ_PKTS_CREDIT (size_t) ;
 int LIO_CN23XX_SLI_OQ_PKTS_SENT (size_t) ;
 int LIO_CN23XX_SLI_OQ_PKT_CONTROL (size_t) ;
 int LIO_CN23XX_SLI_OQ_PKT_INT_LEVELS (size_t) ;
 int LIO_CN23XX_SLI_OQ_SIZE (size_t) ;
 scalar_t__ LIO_GET_OQ_INTR_PKT_CFG (int ) ;
 scalar_t__ LIO_GET_OQ_INTR_TIME_CFG (int ) ;
 int lio_cn23xx_pf_get_oq_ticks (struct octeon_device*,size_t) ;
 size_t lio_read_csr32 (struct octeon_device*,int ) ;
 int lio_write_csr32 (struct octeon_device*,int ,size_t) ;
 int lio_write_csr64 (struct octeon_device*,int ,int) ;

__attribute__((used)) static void
lio_cn23xx_pf_setup_oq_regs(struct octeon_device *oct, uint32_t oq_no)
{
 struct lio_droq *droq = oct->droq[oq_no];
 struct lio_cn23xx_pf *cn23xx = (struct lio_cn23xx_pf *)oct->chip;
 uint64_t cnt_threshold;
 uint64_t time_threshold;
 uint32_t reg_val;

 oq_no += oct->sriov_info.pf_srn;

 lio_write_csr64(oct, LIO_CN23XX_SLI_OQ_BASE_ADDR64(oq_no),
   droq->desc_ring_dma);
 lio_write_csr32(oct, LIO_CN23XX_SLI_OQ_SIZE(oq_no), droq->max_count);

 lio_write_csr32(oct, LIO_CN23XX_SLI_OQ_BUFF_INFO_SIZE(oq_no),
   droq->buffer_size);


 droq->pkts_sent_reg = LIO_CN23XX_SLI_OQ_PKTS_SENT(oq_no);
 droq->pkts_credit_reg = LIO_CN23XX_SLI_OQ_PKTS_CREDIT(oq_no);

 if (!oct->msix_on) {




  reg_val =
      lio_read_csr32(oct, LIO_CN23XX_SLI_OQ_PKT_CONTROL(oq_no));
  reg_val |= LIO_CN23XX_PKT_OUTPUT_CTL_TENB;
  lio_write_csr32(oct, LIO_CN23XX_SLI_OQ_PKT_CONTROL(oq_no),
    reg_val);





  reg_val =
      lio_read_csr32(oct, LIO_CN23XX_SLI_OQ_PKT_CONTROL(oq_no));
  reg_val |= LIO_CN23XX_PKT_OUTPUT_CTL_CENB;
  lio_write_csr32(oct, LIO_CN23XX_SLI_OQ_PKT_CONTROL(oq_no),
    reg_val);
 } else {
  time_threshold = lio_cn23xx_pf_get_oq_ticks(oct,
   (uint32_t)LIO_GET_OQ_INTR_TIME_CFG(cn23xx->conf));
  cnt_threshold = (uint32_t)LIO_GET_OQ_INTR_PKT_CFG(cn23xx->conf);

  lio_write_csr64(oct, LIO_CN23XX_SLI_OQ_PKT_INT_LEVELS(oq_no),
    ((time_threshold << 32 | cnt_threshold)));
 }
}
