
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct icl_conn {int ic_check_send_space; int ic_send_cv; } ;


 int ICL_CONN_LOCK (struct icl_conn*) ;
 int ICL_CONN_UNLOCK (struct icl_conn*) ;
 int SU_OK ;
 int cv_signal (int *) ;
 int sowriteable (struct socket*) ;

__attribute__((used)) static int
icl_soupcall_send(struct socket *so, void *arg, int waitflag)
{
 struct icl_conn *ic;

 if (!sowriteable(so))
  return (SU_OK);

 ic = arg;

 ICL_CONN_LOCK(ic);
 ic->ic_check_send_space = 1;
 ICL_CONN_UNLOCK(ic);

 cv_signal(&ic->ic_send_cv);

 return (SU_OK);
}
