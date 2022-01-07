
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_qp {int dummy; } ;


 int ntb_qp_link_cleanup (struct ntb_transport_qp*) ;

__attribute__((used)) static void
ntb_qp_link_down(struct ntb_transport_qp *qp)
{

 ntb_qp_link_cleanup(qp);
}
