
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tv ;
struct timeval {int dummy; } ;
struct mbuf {int m_flags; struct mbuf* m_next; } ;
typedef TYPE_2__* ng_btsocket_hci_raw_pcb_p ;
typedef int dir ;
typedef int caddr_t ;
struct TYPE_5__ {int flags; TYPE_1__* so; int pcb_mtx; } ;
struct TYPE_4__ {int so_options; } ;


 int MA_OWNED ;
 int M_PROTO1 ;
 int NG_BTSOCKET_HCI_RAW_DIRECTION ;
 int SCM_HCI_RAW_DIRECTION ;
 int SCM_TIMESTAMP ;
 int SOL_HCI_RAW ;
 int SOL_SOCKET ;
 int SO_TIMESTAMP ;
 int microtime (struct timeval*) ;
 int mtx_assert (int *,int ) ;
 struct mbuf* sbcreatecontrol (int ,int,int ,int ) ;

__attribute__((used)) static void
ng_btsocket_hci_raw_savctl(ng_btsocket_hci_raw_pcb_p pcb, struct mbuf **ctl,
  struct mbuf *m)
{
 int dir;
 struct timeval tv;

 mtx_assert(&pcb->pcb_mtx, MA_OWNED);

 if (pcb->flags & NG_BTSOCKET_HCI_RAW_DIRECTION) {
  dir = (m->m_flags & M_PROTO1)? 1 : 0;
  *ctl = sbcreatecontrol((caddr_t) &dir, sizeof(dir),
     SCM_HCI_RAW_DIRECTION, SOL_HCI_RAW);
  if (*ctl != ((void*)0))
   ctl = &((*ctl)->m_next);
 }

 if (pcb->so->so_options & SO_TIMESTAMP) {
  microtime(&tv);
  *ctl = sbcreatecontrol((caddr_t) &tv, sizeof(tv),
     SCM_TIMESTAMP, SOL_SOCKET);
  if (*ctl != ((void*)0))
   ctl = &((*ctl)->m_next);
 }
}
