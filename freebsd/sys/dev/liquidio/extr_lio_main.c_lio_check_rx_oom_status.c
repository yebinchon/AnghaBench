
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct octeon_device {int num_oqs; struct lio_droq** droq; } ;
struct lio_droq {int lock; int pkts_credit_reg; } ;
struct TYPE_6__ {TYPE_2__* rxpciq; } ;
struct lio {TYPE_3__ linfo; struct octeon_device* oct_dev; } ;
struct TYPE_4__ {int q_no; } ;
struct TYPE_5__ {TYPE_1__ s; } ;


 int __compiler_membar () ;
 int lio_droq_refill (struct octeon_device*,struct lio_droq*) ;
 int lio_read_csr32 (struct octeon_device*,int ) ;
 int lio_write_csr32 (struct octeon_device*,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wmb () ;

__attribute__((used)) static void
lio_check_rx_oom_status(struct lio *lio)
{
 struct lio_droq *droq;
 struct octeon_device *oct = lio->oct_dev;
 int desc_refilled;
 int q, q_no = 0;

 for (q = 0; q < oct->num_oqs; q++) {
  q_no = lio->linfo.rxpciq[q].s.q_no;
  droq = oct->droq[q_no];
  if (droq == ((void*)0))
   continue;
  if (lio_read_csr32(oct, droq->pkts_credit_reg) <= 0x40) {
   mtx_lock(&droq->lock);
   desc_refilled = lio_droq_refill(oct, droq);





   wmb();
   lio_write_csr32(oct, droq->pkts_credit_reg,
     desc_refilled);

   __compiler_membar();
   mtx_unlock(&droq->lock);
  }
 }
}
