
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct thread {int td_ucred; } ;
struct socket {int dummy; } ;
struct sockaddr_rfcomm {scalar_t__ rfcomm_family; int rfcomm_len; int rfcomm_channel; int rfcomm_bdaddr; } ;
struct sockaddr {int dummy; } ;
struct TYPE_12__ {int state; int session_mtx; int l2so; int mtu; int dlcs; } ;
typedef TYPE_1__ ng_btsocket_rfcomm_session_t ;
struct TYPE_13__ {int channel; int dlci; int pcb_mtx; int state; int src; int mtu; int so; TYPE_1__* session; int dst; } ;
typedef TYPE_2__ ng_btsocket_rfcomm_pcb_t ;
typedef int bdaddr_t ;
struct TYPE_14__ {int src; } ;


 scalar_t__ AF_BLUETOOTH ;
 int BLUETOOTH_PROTO_L2CAP ;
 int EAFNOSUPPORT ;
 int EBUSY ;
 int ECONNRESET ;
 int EDESTADDRREQ ;
 int EINVAL ;
 int INITIATOR (TYPE_1__*) ;
 int LIST_INSERT_HEAD (int *,TYPE_2__*,int ) ;
 int NG_BTSOCKET_RFCOMM_DLC_CONFIGURING ;
 int NG_BTSOCKET_RFCOMM_DLC_W4_CONNECT ;



 int NG_HCI_BDADDR_ANY ;
 int PF_BLUETOOTH ;
 int RFCOMM_MKDLCI (int,int) ;
 int SOCK_SEQPACKET ;
 scalar_t__ bcmp (int *,int ,int) ;
 int bcopy (int *,int *,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int * ng_btsocket_rfcomm_pcb_by_dlci (TYPE_1__*,int) ;
 int ng_btsocket_rfcomm_send_pn (TYPE_2__*) ;
 TYPE_1__* ng_btsocket_rfcomm_session_by_addr (int *,int *) ;
 int ng_btsocket_rfcomm_session_create (TYPE_1__**,struct socket*,int *,int *,struct thread*) ;
 int ng_btsocket_rfcomm_sessions_mtx ;
 int ng_btsocket_rfcomm_task_wakeup () ;
 int ng_btsocket_rfcomm_timeout (TYPE_2__*) ;
 int session_next ;
 TYPE_4__* so2l2cap_pcb (int ) ;
 TYPE_2__* so2rfcomm_pcb (struct socket*) ;
 int soclose (struct socket*) ;
 int socreate (int ,struct socket**,int ,int ,int ,struct thread*) ;
 int soisconnecting (int ) ;

int
ng_btsocket_rfcomm_connect(struct socket *so, struct sockaddr *nam,
  struct thread *td)
{
 ng_btsocket_rfcomm_pcb_t *pcb = so2rfcomm_pcb(so);
 struct sockaddr_rfcomm *sa = (struct sockaddr_rfcomm *) nam;
 ng_btsocket_rfcomm_session_t *s = ((void*)0);
 struct socket *l2so = ((void*)0);
 int dlci, error = 0;

 if (pcb == ((void*)0))
  return (EINVAL);


 if (sa == ((void*)0))
  return (EINVAL);
 if (sa->rfcomm_family != AF_BLUETOOTH)
  return (EAFNOSUPPORT);
 if (sa->rfcomm_len != sizeof(*sa))
  return (EINVAL);
 if (sa->rfcomm_channel > 30)
  return (EINVAL);
 if (sa->rfcomm_channel == 0 ||
     bcmp(&sa->rfcomm_bdaddr, NG_HCI_BDADDR_ANY, sizeof(bdaddr_t)) == 0)
  return (EDESTADDRREQ);







 error = socreate(PF_BLUETOOTH, &l2so, SOCK_SEQPACKET,
   BLUETOOTH_PROTO_L2CAP, td->td_ucred, td);





 mtx_lock(&ng_btsocket_rfcomm_sessions_mtx);

 s = ng_btsocket_rfcomm_session_by_addr(&pcb->src, &sa->rfcomm_bdaddr);
 if (s == ((void*)0)) {






  if (l2so == ((void*)0)) {
   mtx_unlock(&ng_btsocket_rfcomm_sessions_mtx);
   return (error);
  }

  error = ng_btsocket_rfcomm_session_create(&s, l2so,
    &pcb->src, &sa->rfcomm_bdaddr, td);
  if (error != 0) {
   mtx_unlock(&ng_btsocket_rfcomm_sessions_mtx);
   soclose(l2so);

   return (error);
  }
 } else if (l2so != ((void*)0))
  soclose(l2so);





 mtx_lock(&s->session_mtx);
 mtx_lock(&pcb->pcb_mtx);

 dlci = RFCOMM_MKDLCI(!INITIATOR(s), sa->rfcomm_channel);

 if (ng_btsocket_rfcomm_pcb_by_dlci(s, dlci) != ((void*)0)) {
  mtx_unlock(&pcb->pcb_mtx);
  mtx_unlock(&s->session_mtx);
  mtx_unlock(&ng_btsocket_rfcomm_sessions_mtx);

  return (EBUSY);
 }





 switch (s->state) {
 case 129:
 case 130:
 case 128:





  bcopy(&sa->rfcomm_bdaddr, &pcb->dst, sizeof(pcb->dst));
  pcb->channel = sa->rfcomm_channel;
  pcb->dlci = dlci;

  LIST_INSERT_HEAD(&s->dlcs, pcb, session_next);
  pcb->session = s;

  ng_btsocket_rfcomm_timeout(pcb);
  soisconnecting(pcb->so);

  if (s->state == 128) {
   pcb->mtu = s->mtu;
   bcopy(&so2l2cap_pcb(s->l2so)->src, &pcb->src,
    sizeof(pcb->src));

   pcb->state = NG_BTSOCKET_RFCOMM_DLC_CONFIGURING;

   error = ng_btsocket_rfcomm_send_pn(pcb);
   if (error == 0)
    error = ng_btsocket_rfcomm_task_wakeup();
  } else
   pcb->state = NG_BTSOCKET_RFCOMM_DLC_W4_CONNECT;
  break;

 default:
  error = ECONNRESET;
  break;
 }

 mtx_unlock(&pcb->pcb_mtx);
 mtx_unlock(&s->session_mtx);
 mtx_unlock(&ng_btsocket_rfcomm_sessions_mtx);

 return (error);
}
