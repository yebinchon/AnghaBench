
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iser_conn {scalar_t__ state; int state_mutex; int up_cv; } ;
struct icl_conn {int dummy; } ;


 scalar_t__ ISER_CONN_PENDING ;
 int ISER_INFO (char*,struct iser_conn*) ;
 int cv_signal (int *) ;
 struct iser_conn* icl_to_iser_conn (struct icl_conn*) ;
 int iser_conn_terminate (struct iser_conn*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

void
iser_conn_close(struct icl_conn *ic)
{
 struct iser_conn *iser_conn = icl_to_iser_conn(ic);

 ISER_INFO("closing conn %p", iser_conn);

 sx_xlock(&iser_conn->state_mutex);





 if (!iser_conn_terminate(iser_conn) && iser_conn->state == ISER_CONN_PENDING)
  cv_signal(&iser_conn->up_cv);
 sx_xunlock(&iser_conn->state_mutex);

}
