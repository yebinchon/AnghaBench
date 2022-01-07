
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_qp {int cb_data; int (* event_handler ) (int ,int ) ;int link_work; } ;


 int NTB_LINK_DOWN ;
 int callout_drain (int *) ;
 int ntb_qp_link_down_reset (struct ntb_transport_qp*) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
ntb_qp_link_cleanup(struct ntb_transport_qp *qp)
{

 callout_drain(&qp->link_work);
 ntb_qp_link_down_reset(qp);

 if (qp->event_handler != ((void*)0))
  qp->event_handler(qp->cb_data, NTB_LINK_DOWN);
}
