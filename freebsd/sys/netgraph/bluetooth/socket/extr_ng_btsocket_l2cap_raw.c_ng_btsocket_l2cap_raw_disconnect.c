
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int dummy; } ;
typedef TYPE_1__* ng_btsocket_l2cap_raw_pcb_p ;
struct TYPE_3__ {int pcb_mtx; int * rt; } ;


 int EINVAL ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int * ng_btsocket_l2cap_raw_node ;
 TYPE_1__* so2l2cap_raw_pcb (struct socket*) ;
 int soisdisconnected (struct socket*) ;

int
ng_btsocket_l2cap_raw_disconnect(struct socket *so)
{
 ng_btsocket_l2cap_raw_pcb_p pcb = so2l2cap_raw_pcb(so);

 if (pcb == ((void*)0))
  return (EINVAL);
 if (ng_btsocket_l2cap_raw_node == ((void*)0))
  return (EINVAL);

 mtx_lock(&pcb->pcb_mtx);
 pcb->rt = ((void*)0);
 soisdisconnected(so);
 mtx_unlock(&pcb->pcb_mtx);

 return (0);
}
