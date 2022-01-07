
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_fl {size_t pidx; int gen; size_t size; int cntxt_id; int credits; int * sdesc; struct rx_desc* desc; } ;
struct rx_desc {void* gen2; void* len_gen; int addr_hi; int addr_lo; } ;
typedef int adapter_t ;


 int A_SG_KDOORBELL ;
 int V_EGRCNTX (int ) ;
 int V_FLD_GEN1 (int) ;
 int V_FLD_GEN2 (int) ;
 void* htobe32 (int ) ;
 int t3_write_reg (int *,int ,int ) ;
 int wmb () ;

__attribute__((used)) static void
recycle_rx_buf(adapter_t *adap, struct sge_fl *q, unsigned int idx)
{
 struct rx_desc *from = &q->desc[idx];
 struct rx_desc *to = &q->desc[q->pidx];

 q->sdesc[q->pidx] = q->sdesc[idx];
 to->addr_lo = from->addr_lo;
 to->addr_hi = from->addr_hi;
 wmb();
 to->len_gen = htobe32(V_FLD_GEN1(q->gen));
 to->gen2 = htobe32(V_FLD_GEN2(q->gen));
 q->credits++;

 if (++q->pidx == q->size) {
  q->pidx = 0;
  q->gen ^= 1;
 }
 t3_write_reg(adap, A_SG_KDOORBELL, V_EGRCNTX(q->cntxt_id));
}
