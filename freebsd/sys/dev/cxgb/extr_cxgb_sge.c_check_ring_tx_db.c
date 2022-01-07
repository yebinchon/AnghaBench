
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sge_txq {int cntxt_id; int db_pending; int flags; } ;
struct TYPE_4__ {int * tb; } ;
typedef TYPE_1__ adapter_t ;


 int A_SG_KDOORBELL ;
 int F_SELEGRCNTX ;
 int T3_TRACE1 (int ,char*,int) ;
 int TXQ_LAST_PKT_DB ;
 int TXQ_RUNNING ;
 int V_EGRCNTX (int) ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int t3_write_reg (TYPE_1__*,int ,int) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int wmb () ;

__attribute__((used)) static __inline void
check_ring_tx_db(adapter_t *adap, struct sge_txq *q, int mustring)
{
 if (mustring || ++q->db_pending >= 32) {
  wmb();
  t3_write_reg(adap, A_SG_KDOORBELL,
      F_SELEGRCNTX | V_EGRCNTX(q->cntxt_id));
  q->db_pending = 0;
 }

}
