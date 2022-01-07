
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdma_cm_id {TYPE_1__* qp; struct iser_conn* context; } ;
struct iser_conn {int up_cv; int state; } ;
struct ib_qp_init_attr {int dummy; } ;
struct ib_qp_attr {int dest_qp_num; } ;
struct TYPE_2__ {int qp_num; } ;


 int ISER_CONN_UP ;
 int ISER_INFO (char*,int ,int ) ;
 int cv_signal (int *) ;
 int ib_query_qp (TYPE_1__*,struct ib_qp_attr*,int ,struct ib_qp_init_attr*) ;

__attribute__((used)) static void
iser_connected_handler(struct rdma_cm_id *cma_id)
{
 struct iser_conn *iser_conn;
 struct ib_qp_attr attr;
 struct ib_qp_init_attr init_attr;

 iser_conn = cma_id->context;

 (void)ib_query_qp(cma_id->qp, &attr, ~0, &init_attr);

 ISER_INFO("remote qpn:%x my qpn:%x",
    attr.dest_qp_num, cma_id->qp->qp_num);

 iser_conn->state = ISER_CONN_UP;

 cv_signal(&iser_conn->up_cv);
}
