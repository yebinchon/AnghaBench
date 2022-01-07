
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
struct socket {int dummy; } ;
typedef TYPE_1__* ng_btsocket_l2cap_pcb_p ;
struct TYPE_3__ {scalar_t__ psm; } ;


 int EADDRNOTAVAIL ;
 int EINVAL ;
 int SOCK_LOCK (struct socket*) ;
 int SOCK_UNLOCK (struct socket*) ;
 int * ng_btsocket_l2cap_node ;
 TYPE_1__* so2l2cap_pcb (struct socket*) ;
 int solisten_proto (struct socket*,int) ;
 int solisten_proto_check (struct socket*) ;

int
ng_btsocket_l2cap_listen(struct socket *so, int backlog, struct thread *td)
{
 ng_btsocket_l2cap_pcb_p pcb = so2l2cap_pcb(so);
 int error;

 SOCK_LOCK(so);
 error = solisten_proto_check(so);
 if (error != 0)
  goto out;
 if (pcb == ((void*)0)) {
  error = EINVAL;
  goto out;
 }
 if (ng_btsocket_l2cap_node == ((void*)0)) {
  error = EINVAL;
  goto out;
 }
 if (pcb->psm == 0) {
  error = EADDRNOTAVAIL;
  goto out;
 }
 solisten_proto(so, backlog);
out:
 SOCK_UNLOCK(so);
 return (error);
}
