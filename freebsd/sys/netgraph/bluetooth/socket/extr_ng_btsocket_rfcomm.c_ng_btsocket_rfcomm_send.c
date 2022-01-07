
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct mbuf {int dummy; } ;
struct TYPE_5__ {scalar_t__ state; int flags; int pcb_mtx; TYPE_1__* so; } ;
typedef TYPE_2__ ng_btsocket_rfcomm_pcb_t ;
struct TYPE_4__ {int so_snd; } ;


 int EINVAL ;
 int ENOTCONN ;
 scalar_t__ NG_BTSOCKET_RFCOMM_DLC_CONNECTED ;
 int NG_BTSOCKET_RFCOMM_DLC_SENDING ;
 int NG_FREE_M (struct mbuf*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ng_btsocket_rfcomm_task_wakeup () ;
 int sbappend (int *,struct mbuf*,int) ;
 TYPE_2__* so2rfcomm_pcb (struct socket*) ;

int
ng_btsocket_rfcomm_send(struct socket *so, int flags, struct mbuf *m,
  struct sockaddr *nam, struct mbuf *control, struct thread *td)
{
 ng_btsocket_rfcomm_pcb_t *pcb = so2rfcomm_pcb(so);
 int error = 0;


 if (pcb == ((void*)0) || m == ((void*)0) || control != ((void*)0)) {
  error = EINVAL;
  goto drop;
 }

 mtx_lock(&pcb->pcb_mtx);


 if (pcb->state != NG_BTSOCKET_RFCOMM_DLC_CONNECTED) {
  mtx_unlock(&pcb->pcb_mtx);
  error = ENOTCONN;
  goto drop;
 }


 sbappend(&pcb->so->so_snd, m, flags);
 m = ((void*)0);

 if (!(pcb->flags & NG_BTSOCKET_RFCOMM_DLC_SENDING)) {
  pcb->flags |= NG_BTSOCKET_RFCOMM_DLC_SENDING;
  error = ng_btsocket_rfcomm_task_wakeup();
 }

 mtx_unlock(&pcb->pcb_mtx);
drop:
 NG_FREE_M(m);
 NG_FREE_M(control);

 return (error);
}
