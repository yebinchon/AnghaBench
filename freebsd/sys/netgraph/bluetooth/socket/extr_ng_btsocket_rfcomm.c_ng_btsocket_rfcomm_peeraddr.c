
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int dummy; } ;
struct sockaddr_rfcomm {int rfcomm_len; int rfcomm_family; int rfcomm_channel; int rfcomm_bdaddr; } ;
struct sockaddr {int dummy; } ;
typedef int sa ;
typedef TYPE_1__* ng_btsocket_rfcomm_pcb_p ;
struct TYPE_3__ {int channel; int dst; } ;


 int AF_BLUETOOTH ;
 int EINVAL ;
 int ENOMEM ;
 int M_NOWAIT ;
 int bcopy (int *,int *,int) ;
 TYPE_1__* so2rfcomm_pcb (struct socket*) ;
 struct sockaddr* sodupsockaddr (struct sockaddr*,int ) ;

int
ng_btsocket_rfcomm_peeraddr(struct socket *so, struct sockaddr **nam)
{
 ng_btsocket_rfcomm_pcb_p pcb = so2rfcomm_pcb(so);
 struct sockaddr_rfcomm sa;

 if (pcb == ((void*)0))
  return (EINVAL);

 bcopy(&pcb->dst, &sa.rfcomm_bdaddr, sizeof(sa.rfcomm_bdaddr));
 sa.rfcomm_channel = pcb->channel;
 sa.rfcomm_len = sizeof(sa);
 sa.rfcomm_family = AF_BLUETOOTH;

 *nam = sodupsockaddr((struct sockaddr *) &sa, M_NOWAIT);

 return ((*nam == ((void*)0))? ENOMEM : 0);
}
