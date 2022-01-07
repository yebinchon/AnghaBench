
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct sockaddr_hci {scalar_t__ hci_family; int hci_len; scalar_t__* hci_node; } ;
struct sockaddr {int dummy; } ;
typedef TYPE_1__* ng_btsocket_hci_raw_pcb_p ;
struct TYPE_3__ {int pcb_mtx; int addr; } ;


 scalar_t__ AF_BLUETOOTH ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 int bcopy (struct sockaddr_hci*,int *,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int * ng_btsocket_hci_raw_node ;
 TYPE_1__* so2hci_raw_pcb (struct socket*) ;

int
ng_btsocket_hci_raw_bind(struct socket *so, struct sockaddr *nam,
  struct thread *td)
{
 ng_btsocket_hci_raw_pcb_p pcb = so2hci_raw_pcb(so);
 struct sockaddr_hci *sa = (struct sockaddr_hci *) nam;

 if (pcb == ((void*)0))
  return (EINVAL);
 if (ng_btsocket_hci_raw_node == ((void*)0))
  return (EINVAL);

 if (sa == ((void*)0))
  return (EINVAL);
 if (sa->hci_family != AF_BLUETOOTH)
  return (EAFNOSUPPORT);
 if (sa->hci_len != sizeof(*sa))
  return (EINVAL);
 if (sa->hci_node[0] == 0)
  return (EINVAL);

 mtx_lock(&pcb->pcb_mtx);
 bcopy(sa, &pcb->addr, sizeof(pcb->addr));
 mtx_unlock(&pcb->pcb_mtx);

 return (0);
}
