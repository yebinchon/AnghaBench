
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tp_rdma_stats {int rqe_dfr_pkt; } ;
struct adapter {int dummy; } ;


 int A_TP_MIB_RQE_DFR_PKT ;
 int t4_tp_mib_read (struct adapter*,int *,int,int ,int) ;

void t4_tp_get_rdma_stats(struct adapter *adap, struct tp_rdma_stats *st,
     bool sleep_ok)
{
 t4_tp_mib_read(adap, &st->rqe_dfr_pkt, 2, A_TP_MIB_RQE_DFR_PKT,
         sleep_ok);
}
