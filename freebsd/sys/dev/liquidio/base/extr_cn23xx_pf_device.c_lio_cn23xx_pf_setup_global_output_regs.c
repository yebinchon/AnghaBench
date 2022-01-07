
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ pf_srn; scalar_t__ num_pf_rings; } ;
struct octeon_device {scalar_t__ pf_num; TYPE_1__ sriov_info; scalar_t__ chip; } ;
struct lio_cn23xx_pf {int conf; } ;


 scalar_t__ LIO_CN23XX_PKT_OUTPUT_CTL_BMODE ;
 scalar_t__ LIO_CN23XX_PKT_OUTPUT_CTL_DPTR ;
 scalar_t__ LIO_CN23XX_PKT_OUTPUT_CTL_ES ;
 scalar_t__ LIO_CN23XX_PKT_OUTPUT_CTL_ES_P ;
 scalar_t__ LIO_CN23XX_PKT_OUTPUT_CTL_NSR ;
 scalar_t__ LIO_CN23XX_PKT_OUTPUT_CTL_NSR_P ;
 scalar_t__ LIO_CN23XX_PKT_OUTPUT_CTL_ROR ;
 scalar_t__ LIO_CN23XX_PKT_OUTPUT_CTL_ROR_P ;
 int LIO_CN23XX_SLI_OQ_PKT_CONTROL (scalar_t__) ;
 int LIO_CN23XX_SLI_OQ_PKT_INT_LEVELS (scalar_t__) ;
 int LIO_CN23XX_SLI_OQ_WMARK ;
 int LIO_CN23XX_SLI_OUT_BP_EN2_W1S ;
 int LIO_CN23XX_SLI_OUT_BP_EN_W1S ;
 scalar_t__ LIO_GET_IS_SLI_BP_ON_CFG (int ) ;
 int LIO_GET_OQ_INTR_PKT_CFG (int ) ;
 scalar_t__ LIO_GET_OQ_INTR_TIME_CFG (int ) ;
 int lio_cn23xx_pf_get_oq_ticks (struct octeon_device*,scalar_t__) ;
 scalar_t__ lio_read_csr32 (struct octeon_device*,int ) ;
 int lio_write_csr32 (struct octeon_device*,int ,scalar_t__) ;
 int lio_write_csr64 (struct octeon_device*,int ,int) ;

__attribute__((used)) static void
lio_cn23xx_pf_setup_global_output_regs(struct octeon_device *oct)
{
 struct lio_cn23xx_pf *cn23xx = (struct lio_cn23xx_pf *)oct->chip;
 uint64_t time_threshold;
 uint32_t ern, q_no, reg_val, srn;

 srn = oct->sriov_info.pf_srn;
 ern = srn + oct->sriov_info.num_pf_rings;

 if (LIO_GET_IS_SLI_BP_ON_CFG(cn23xx->conf)) {
  lio_write_csr64(oct, LIO_CN23XX_SLI_OQ_WMARK, 32);
 } else {

  lio_write_csr64(oct, LIO_CN23XX_SLI_OQ_WMARK, 0);
 }

 for (q_no = srn; q_no < ern; q_no++) {
  reg_val = lio_read_csr32(oct,
      LIO_CN23XX_SLI_OQ_PKT_CONTROL(q_no));


  reg_val |= LIO_CN23XX_PKT_OUTPUT_CTL_DPTR;


  reg_val &= ~(LIO_CN23XX_PKT_OUTPUT_CTL_BMODE);





  reg_val &= ~(LIO_CN23XX_PKT_OUTPUT_CTL_ROR_P);
  reg_val &= ~(LIO_CN23XX_PKT_OUTPUT_CTL_NSR_P);


  reg_val &= ~(LIO_CN23XX_PKT_OUTPUT_CTL_ES_P);
  reg_val &= ~(LIO_CN23XX_PKT_OUTPUT_CTL_ROR);
  reg_val &= ~(LIO_CN23XX_PKT_OUTPUT_CTL_NSR);

  reg_val |= (LIO_CN23XX_PKT_OUTPUT_CTL_ES);


  lio_write_csr32(oct, LIO_CN23XX_SLI_OQ_PKT_CONTROL(q_no),
    reg_val);







  time_threshold =lio_cn23xx_pf_get_oq_ticks(
         oct, (uint32_t)LIO_GET_OQ_INTR_TIME_CFG(cn23xx->conf));

  lio_write_csr64(oct, LIO_CN23XX_SLI_OQ_PKT_INT_LEVELS(q_no),
    (LIO_GET_OQ_INTR_PKT_CFG(cn23xx->conf) |
     (time_threshold << 32)));
 }


 lio_write_csr64(oct, LIO_CN23XX_SLI_OQ_WMARK, 0x40);


 if (oct->pf_num)
  lio_write_csr64(oct, LIO_CN23XX_SLI_OUT_BP_EN2_W1S,
    0xffffffffffffffffULL);
 else
  lio_write_csr64(oct, LIO_CN23XX_SLI_OUT_BP_EN_W1S,
    0xffffffffffffffffULL);
}
