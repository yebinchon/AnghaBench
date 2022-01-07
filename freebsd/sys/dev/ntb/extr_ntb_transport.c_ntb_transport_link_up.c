
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_qp {int client_ready; int link_work; int qp_num; struct ntb_transport_ctx* transport; } ;
struct ntb_transport_ctx {scalar_t__ link_is_up; } ;


 int callout_reset (int *,int ,int ,struct ntb_transport_qp*) ;
 int ntb_printf (int,char*,int ) ;
 int ntb_qp_link_work ;

void
ntb_transport_link_up(struct ntb_transport_qp *qp)
{
 struct ntb_transport_ctx *nt = qp->transport;

 qp->client_ready = 1;

 ntb_printf(2, "qp %d client ready\n", qp->qp_num);

 if (nt->link_is_up)
  callout_reset(&qp->link_work, 0, ntb_qp_link_work, qp);
}
