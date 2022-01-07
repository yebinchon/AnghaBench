
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {int dummy; } ;
struct sockaddr_hci {int hci_len; int hci_node; int hci_family; } ;
struct sockaddr {int dummy; } ;
typedef int sa ;
typedef TYPE_2__* ng_btsocket_hci_raw_pcb_p ;
struct TYPE_4__ {int hci_node; } ;
struct TYPE_5__ {int pcb_mtx; TYPE_1__ addr; } ;


 int AF_BLUETOOTH ;
 int EINVAL ;
 int ENOMEM ;
 int M_NOWAIT ;
 int bzero (struct sockaddr_hci*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int * ng_btsocket_hci_raw_node ;
 TYPE_2__* so2hci_raw_pcb (struct socket*) ;
 struct sockaddr* sodupsockaddr (struct sockaddr*,int ) ;
 int strlcpy (int ,int ,int) ;

int
ng_btsocket_hci_raw_sockaddr(struct socket *so, struct sockaddr **nam)
{
 ng_btsocket_hci_raw_pcb_p pcb = so2hci_raw_pcb(so);
 struct sockaddr_hci sa;

 if (pcb == ((void*)0))
  return (EINVAL);
 if (ng_btsocket_hci_raw_node == ((void*)0))
  return (EINVAL);

 bzero(&sa, sizeof(sa));
 sa.hci_len = sizeof(sa);
 sa.hci_family = AF_BLUETOOTH;

 mtx_lock(&pcb->pcb_mtx);
 strlcpy(sa.hci_node, pcb->addr.hci_node, sizeof(sa.hci_node));
 mtx_unlock(&pcb->pcb_mtx);

 *nam = sodupsockaddr((struct sockaddr *) &sa, M_NOWAIT);

 return ((*nam == ((void*)0))? ENOMEM : 0);
}
