
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef size_t uint32_t ;
struct TYPE_2__ {size_t pf_srn; size_t num_pf_rings; } ;
struct octeon_device {int pf_num; int pcie_port; struct lio_instr_queue** instr_queue; TYPE_1__ sriov_info; scalar_t__ chip; } ;
struct lio_instr_queue {size_t inst_cnt_reg; } ;
struct lio_cn23xx_pf {int conf; } ;


 int LIO_CN23XX_PKT_INPUT_CTL_MAC_NUM_POS ;
 int LIO_CN23XX_PKT_INPUT_CTL_MASK ;
 int LIO_CN23XX_PKT_INPUT_CTL_PF_NUM_POS ;
 int LIO_CN23XX_PKT_IN_DONE_WMARK_BIT_POS ;
 int LIO_CN23XX_PKT_IN_DONE_WMARK_MASK ;
 size_t LIO_CN23XX_SLI_IQ_INSTR_COUNT64 (size_t) ;
 size_t LIO_CN23XX_SLI_IQ_PKT_CONTROL64 (size_t) ;
 int LIO_GET_IQ_INTR_PKT_CFG (int ) ;
 scalar_t__ lio_cn23xx_pf_reset_io_queues (struct octeon_device*) ;
 int lio_read_csr64 (struct octeon_device*,size_t) ;
 int lio_write_csr64 (struct octeon_device*,size_t,int) ;

__attribute__((used)) static int
lio_cn23xx_pf_setup_global_input_regs(struct octeon_device *oct)
{
 struct lio_cn23xx_pf *cn23xx = (struct lio_cn23xx_pf *)oct->chip;
 struct lio_instr_queue *iq;
 uint64_t intr_threshold;
 uint64_t pf_num, reg_val;
 uint32_t q_no, ern, srn;

 pf_num = oct->pf_num;

 srn = oct->sriov_info.pf_srn;
 ern = srn + oct->sriov_info.num_pf_rings;

 if (lio_cn23xx_pf_reset_io_queues(oct))
  return (-1);







 for (q_no = 0; q_no < ern; q_no++) {
  reg_val = oct->pcie_port <<
   LIO_CN23XX_PKT_INPUT_CTL_MAC_NUM_POS;

  reg_val |= pf_num << LIO_CN23XX_PKT_INPUT_CTL_PF_NUM_POS;

  lio_write_csr64(oct, LIO_CN23XX_SLI_IQ_PKT_CONTROL64(q_no),
    reg_val);
 }





 for (q_no = srn; q_no < ern; q_no++) {
  uint32_t inst_cnt_reg;

  iq = oct->instr_queue[q_no];
  if (iq != ((void*)0))
   inst_cnt_reg = iq->inst_cnt_reg;
  else
   inst_cnt_reg = LIO_CN23XX_SLI_IQ_INSTR_COUNT64(q_no);

  reg_val =
      lio_read_csr64(oct, LIO_CN23XX_SLI_IQ_PKT_CONTROL64(q_no));

  reg_val |= LIO_CN23XX_PKT_INPUT_CTL_MASK;

  lio_write_csr64(oct, LIO_CN23XX_SLI_IQ_PKT_CONTROL64(q_no),
    reg_val);



  intr_threshold = LIO_GET_IQ_INTR_PKT_CFG(cn23xx->conf) &
      LIO_CN23XX_PKT_IN_DONE_WMARK_MASK;

  lio_write_csr64(oct, inst_cnt_reg,
    (lio_read_csr64(oct, inst_cnt_reg) &
     ~(LIO_CN23XX_PKT_IN_DONE_WMARK_MASK <<
       LIO_CN23XX_PKT_IN_DONE_WMARK_BIT_POS)) |
    (intr_threshold <<
     LIO_CN23XX_PKT_IN_DONE_WMARK_BIT_POS));
 }
 return (0);
}
