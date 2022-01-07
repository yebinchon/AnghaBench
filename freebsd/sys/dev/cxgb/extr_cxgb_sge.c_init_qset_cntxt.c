
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_4__ {int cntxt_id; } ;
struct sge_qset {TYPE_3__* txq; TYPE_2__* fl; TYPE_1__ rspq; } ;
struct TYPE_6__ {int sendq; scalar_t__ token; scalar_t__ cntxt_id; } ;
struct TYPE_5__ {int cntxt_id; } ;


 scalar_t__ FW_CTRL_SGEEC_START ;
 scalar_t__ FW_CTRL_TID_START ;
 scalar_t__ FW_OFLD_SGEEC_START ;
 scalar_t__ FW_TUNNEL_SGEEC_START ;
 scalar_t__ FW_TUNNEL_TID_START ;
 int INT_MAX ;
 size_t TXQ_CTRL ;
 size_t TXQ_ETH ;
 size_t TXQ_OFLD ;
 int mbufq_init (int *,int ) ;

__attribute__((used)) static void
init_qset_cntxt(struct sge_qset *qs, u_int id)
{

 qs->rspq.cntxt_id = id;
 qs->fl[0].cntxt_id = 2 * id;
 qs->fl[1].cntxt_id = 2 * id + 1;
 qs->txq[TXQ_ETH].cntxt_id = FW_TUNNEL_SGEEC_START + id;
 qs->txq[TXQ_ETH].token = FW_TUNNEL_TID_START + id;
 qs->txq[TXQ_OFLD].cntxt_id = FW_OFLD_SGEEC_START + id;
 qs->txq[TXQ_CTRL].cntxt_id = FW_CTRL_SGEEC_START + id;
 qs->txq[TXQ_CTRL].token = FW_CTRL_TID_START + id;


 mbufq_init(&qs->txq[TXQ_ETH].sendq, INT_MAX);
 mbufq_init(&qs->txq[TXQ_OFLD].sendq, INT_MAX);
 mbufq_init(&qs->txq[TXQ_CTRL].sendq, INT_MAX);
}
