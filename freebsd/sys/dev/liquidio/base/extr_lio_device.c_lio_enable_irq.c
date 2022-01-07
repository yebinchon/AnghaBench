
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct octeon_device {int dummy; } ;
struct lio_instr_queue {int inst_cnt_reg; int lock; scalar_t__ pkt_in_done; struct octeon_device* oct_dev; } ;
struct lio_droq {int pkts_sent_reg; int lock; scalar_t__ pkt_count; int pkts_pending; struct octeon_device* oct_dev; } ;


 int LIO_CN23XX_INTR_RESEND ;
 scalar_t__ LIO_CN23XX_PF (struct octeon_device*) ;
 int __compiler_membar () ;
 scalar_t__ atomic_load_acq_int (int *) ;
 int lio_read_csr64 (struct octeon_device*,int ) ;
 int lio_write_csr32 (struct octeon_device*,int ,scalar_t__) ;
 int lio_write_csr64 (struct octeon_device*,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
lio_enable_irq(struct lio_droq *droq, struct lio_instr_queue *iq)
{
 struct octeon_device *oct = ((void*)0);
 uint64_t instr_cnt;
 uint32_t pkts_pend;


 if (droq != ((void*)0)) {
  oct = droq->oct_dev;
  pkts_pend = atomic_load_acq_int(&droq->pkts_pending);
  mtx_lock(&droq->lock);
  lio_write_csr32(oct, droq->pkts_sent_reg,
    droq->pkt_count - pkts_pend);
  droq->pkt_count = pkts_pend;

  __compiler_membar();
  mtx_unlock(&droq->lock);
 }

 if (iq != ((void*)0)) {
  oct = iq->oct_dev;
  mtx_lock(&iq->lock);
  lio_write_csr32(oct, iq->inst_cnt_reg, iq->pkt_in_done);
  iq->pkt_in_done = 0;

  __compiler_membar();
  mtx_unlock(&iq->lock);
 }
 if ((oct != ((void*)0)) && (LIO_CN23XX_PF(oct))) {
  if (droq != ((void*)0))
   lio_write_csr64(oct, droq->pkts_sent_reg,
     LIO_CN23XX_INTR_RESEND);


  else if (iq != ((void*)0)) {
   instr_cnt = lio_read_csr64(oct, iq->inst_cnt_reg);
   lio_write_csr64(oct, iq->inst_cnt_reg,
     ((instr_cnt & 0xFFFFFFFF00000000ULL) |
      LIO_CN23XX_INTR_RESEND));
  }
 }
}
