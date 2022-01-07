
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_qp {int link_work; } ;
struct ntb_transport_ctx {int qp_count; int qp_bitmap; int dev; struct ntb_transport_qp* qp_vec; scalar_t__ link_is_up; int link_work; } ;


 int callout_drain (int *) ;
 int ntb_qp_link_cleanup (struct ntb_transport_qp*) ;
 int ntb_spad_clear (int ) ;

__attribute__((used)) static void
ntb_transport_link_cleanup(struct ntb_transport_ctx *nt)
{
 struct ntb_transport_qp *qp;
 int i;

 callout_drain(&nt->link_work);
 nt->link_is_up = 0;


 for (i = 0; i < nt->qp_count; i++) {
  if ((nt->qp_bitmap & (1 << i)) != 0) {
   qp = &nt->qp_vec[i];
   ntb_qp_link_cleanup(qp);
   callout_drain(&qp->link_work);
  }
 }






 ntb_spad_clear(nt->dev);
}
