
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rq_cnt; int cpi_alg; int vf_id; int msg; } ;
union nic_mbx {TYPE_1__ cpi_cfg; } ;
struct nicvf {TYPE_2__* qs; int cpi_alg; int vf_id; } ;
struct TYPE_4__ {int rq_cnt; } ;


 int NIC_MBOX_MSG_CPI_CFG ;
 int nicvf_send_msg_to_pf (struct nicvf*,union nic_mbx*) ;

__attribute__((used)) static void
nicvf_config_cpi(struct nicvf *nic)
{
 union nic_mbx mbx = {};

 mbx.cpi_cfg.msg = NIC_MBOX_MSG_CPI_CFG;
 mbx.cpi_cfg.vf_id = nic->vf_id;
 mbx.cpi_cfg.cpi_alg = nic->cpi_alg;
 mbx.cpi_cfg.rq_cnt = nic->qs->rq_cnt;

 nicvf_send_msg_to_pf(nic, &mbx);
}
