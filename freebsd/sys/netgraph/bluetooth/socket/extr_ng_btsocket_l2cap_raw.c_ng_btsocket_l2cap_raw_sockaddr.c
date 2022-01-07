
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int dummy; } ;
struct sockaddr_l2cap {int l2cap_len; int l2cap_bdaddr_type; scalar_t__ l2cap_cid; int l2cap_family; scalar_t__ l2cap_psm; int l2cap_bdaddr; } ;
struct sockaddr {int dummy; } ;
typedef int sa ;
typedef TYPE_1__* ng_btsocket_l2cap_raw_pcb_p ;
struct TYPE_3__ {int pcb_mtx; int src; } ;


 int AF_BLUETOOTH ;
 int BDADDR_BREDR ;
 int EINVAL ;
 int ENOMEM ;
 int M_NOWAIT ;
 int bcopy (int *,int *,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int * ng_btsocket_l2cap_raw_node ;
 TYPE_1__* so2l2cap_raw_pcb (struct socket*) ;
 struct sockaddr* sodupsockaddr (struct sockaddr*,int ) ;

int
ng_btsocket_l2cap_raw_sockaddr(struct socket *so, struct sockaddr **nam)
{
 ng_btsocket_l2cap_raw_pcb_p pcb = so2l2cap_raw_pcb(so);
 struct sockaddr_l2cap sa;

 if (pcb == ((void*)0))
  return (EINVAL);
 if (ng_btsocket_l2cap_raw_node == ((void*)0))
  return (EINVAL);

 mtx_lock(&pcb->pcb_mtx);
 bcopy(&pcb->src, &sa.l2cap_bdaddr, sizeof(sa.l2cap_bdaddr));
 mtx_unlock(&pcb->pcb_mtx);

 sa.l2cap_psm = 0;
 sa.l2cap_len = sizeof(sa);
 sa.l2cap_family = AF_BLUETOOTH;
 sa.l2cap_cid = 0;
 sa.l2cap_bdaddr_type = BDADDR_BREDR;
 *nam = sodupsockaddr((struct sockaddr *) &sa, M_NOWAIT);

 return ((*nam == ((void*)0))? ENOMEM : 0);
}
