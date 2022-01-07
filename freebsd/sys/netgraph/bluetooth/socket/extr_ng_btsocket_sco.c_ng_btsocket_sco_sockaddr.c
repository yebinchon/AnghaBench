
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int dummy; } ;
struct sockaddr_sco {int sco_len; int sco_family; int sco_bdaddr; } ;
struct sockaddr {int dummy; } ;
typedef int sa ;
typedef TYPE_1__* ng_btsocket_sco_pcb_p ;
struct TYPE_3__ {int pcb_mtx; int src; } ;


 int AF_BLUETOOTH ;
 int EINVAL ;
 int ENOMEM ;
 int M_NOWAIT ;
 int bcopy (int *,int *,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int * ng_btsocket_sco_node ;
 TYPE_1__* so2sco_pcb (struct socket*) ;
 struct sockaddr* sodupsockaddr (struct sockaddr*,int ) ;

int
ng_btsocket_sco_sockaddr(struct socket *so, struct sockaddr **nam)
{
 ng_btsocket_sco_pcb_p pcb = so2sco_pcb(so);
 struct sockaddr_sco sa;

 if (pcb == ((void*)0))
  return (EINVAL);
 if (ng_btsocket_sco_node == ((void*)0))
  return (EINVAL);

 mtx_lock(&pcb->pcb_mtx);
 bcopy(&pcb->src, &sa.sco_bdaddr, sizeof(sa.sco_bdaddr));
 mtx_unlock(&pcb->pcb_mtx);

 sa.sco_len = sizeof(sa);
 sa.sco_family = AF_BLUETOOTH;

 *nam = sodupsockaddr((struct sockaddr *) &sa, M_NOWAIT);

 return ((*nam == ((void*)0))? ENOMEM : 0);
}
