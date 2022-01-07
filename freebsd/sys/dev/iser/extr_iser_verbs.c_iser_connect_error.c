
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cm_id {struct iser_conn* context; } ;
struct iser_conn {int up_cv; int state; } ;


 int ISER_CONN_TERMINATING ;
 int ISER_ERR (char*,struct iser_conn*) ;
 int cv_signal (int *) ;

__attribute__((used)) static void
iser_connect_error(struct rdma_cm_id *cma_id)
{
 struct iser_conn *iser_conn;

 iser_conn = cma_id->context;

 ISER_ERR("conn %p", iser_conn);

 iser_conn->state = ISER_CONN_TERMINATING;

 cv_signal(&iser_conn->up_cv);
}
