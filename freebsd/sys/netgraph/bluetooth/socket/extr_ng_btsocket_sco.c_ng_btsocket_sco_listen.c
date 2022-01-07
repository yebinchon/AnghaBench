
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
struct socket {int dummy; } ;
typedef TYPE_1__* ng_btsocket_sco_pcb_p ;
typedef int bdaddr_t ;
struct TYPE_3__ {int pcb_mtx; int src; } ;


 int EDESTADDRREQ ;
 int EINVAL ;
 int NG_HCI_BDADDR_ANY ;
 int SOCK_LOCK (struct socket*) ;
 int SOCK_UNLOCK (struct socket*) ;
 scalar_t__ bcmp (int *,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int * ng_btsocket_sco_node ;
 TYPE_1__* so2sco_pcb (struct socket*) ;
 int solisten_proto (struct socket*,int) ;
 int solisten_proto_check (struct socket*) ;

int
ng_btsocket_sco_listen(struct socket *so, int backlog, struct thread *td)
{
 ng_btsocket_sco_pcb_p pcb = so2sco_pcb(so);
 int error;

 if (pcb == ((void*)0))
  return (EINVAL);
 if (ng_btsocket_sco_node == ((void*)0))
  return (EINVAL);

 SOCK_LOCK(so);
 mtx_lock(&pcb->pcb_mtx);

 error = solisten_proto_check(so);
 if (error != 0)
  goto out;






 solisten_proto(so, backlog);
out:
 mtx_unlock(&pcb->pcb_mtx);
 SOCK_UNLOCK(so);

 return (error);
}
