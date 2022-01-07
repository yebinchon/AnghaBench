
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct icl_conn {int ic_receive_cv; } ;


 int SU_OK ;
 int cv_signal (int *) ;
 int soreadable (struct socket*) ;

__attribute__((used)) static int
icl_soupcall_receive(struct socket *so, void *arg, int waitflag)
{
 struct icl_conn *ic;

 if (!soreadable(so))
  return (SU_OK);

 ic = arg;
 cv_signal(&ic->ic_receive_cv);
 return (SU_OK);
}
