
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int dummy; } ;
struct sockaddr_l2cap {int l2cap_len; int l2cap_bdaddr_type; scalar_t__ l2cap_cid; int l2cap_family; int l2cap_psm; int l2cap_bdaddr; } ;
struct sockaddr {int dummy; } ;
typedef int sa ;
typedef TYPE_1__* ng_btsocket_l2cap_pcb_p ;
struct TYPE_3__ {int srctype; int psm; int src; } ;


 int AF_BLUETOOTH ;
 int EINVAL ;
 int ENOMEM ;
 int M_NOWAIT ;
 int bcopy (int *,int *,int) ;
 int htole16 (int ) ;
 int * ng_btsocket_l2cap_node ;
 TYPE_1__* so2l2cap_pcb (struct socket*) ;
 struct sockaddr* sodupsockaddr (struct sockaddr*,int ) ;

int
ng_btsocket_l2cap_sockaddr(struct socket *so, struct sockaddr **nam)
{
 ng_btsocket_l2cap_pcb_p pcb = so2l2cap_pcb(so);
 struct sockaddr_l2cap sa;

 if (pcb == ((void*)0))
  return (EINVAL);
 if (ng_btsocket_l2cap_node == ((void*)0))
  return (EINVAL);

 bcopy(&pcb->src, &sa.l2cap_bdaddr, sizeof(sa.l2cap_bdaddr));
 sa.l2cap_psm = htole16(pcb->psm);
 sa.l2cap_len = sizeof(sa);
 sa.l2cap_family = AF_BLUETOOTH;
 sa.l2cap_cid = 0;
 sa.l2cap_bdaddr_type = pcb->srctype;

 *nam = sodupsockaddr((struct sockaddr *) &sa, M_NOWAIT);

 return ((*nam == ((void*)0))? ENOMEM : 0);
}
