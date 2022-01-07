
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct octeon_device {int dummy; } ;
struct lio_instr_queue {int pkt_in_done; int max_count; int octeon_read_index; int inst_cnt_reg; struct octeon_device* oct_dev; } ;


 int LIO_CN23XX_PKT_IN_DONE_CNT_MASK ;
 int lio_read_csr32 (struct octeon_device*,int ) ;

__attribute__((used)) static uint32_t
lio_cn23xx_pf_update_read_index(struct lio_instr_queue *iq)
{
 struct octeon_device *oct = iq->oct_dev;
 uint32_t new_idx;
 uint32_t last_done;
 uint32_t pkt_in_done = lio_read_csr32(oct, iq->inst_cnt_reg);

 last_done = pkt_in_done - iq->pkt_in_done;
 iq->pkt_in_done = pkt_in_done;






 new_idx = (iq->octeon_read_index +
     ((uint32_t)(last_done & LIO_CN23XX_PKT_IN_DONE_CNT_MASK))) %
     iq->max_count;

 return (new_idx);
}
