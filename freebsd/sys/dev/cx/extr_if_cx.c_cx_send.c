
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_short ;
typedef int u_char ;
struct mbuf {int m_next; } ;
struct TYPE_6__ {int timeout; TYPE_2__* ifp; int chan; int lo_queue; int hi_queue; int running; } ;
typedef TYPE_1__ drv_t ;
struct TYPE_7__ {int if_drv_flags; } ;


 int BPF_MTAP (TYPE_2__*,struct mbuf*) ;
 int CX_DEBUG2 (TYPE_1__*,char*) ;
 int DMABUFSZ ;
 int IFF_DRV_OACTIVE ;
 int IF_DEQUEUE (int *,struct mbuf*) ;
 int caddr_t ;
 scalar_t__ cx_buf_free (int ) ;
 int cx_get_dsr (int ) ;
 int cx_get_loop (int ) ;
 int cx_send_packet (int ,int *,int ,int ) ;
 int m_copydata (struct mbuf*,int ,int ,int *) ;
 int m_freem (struct mbuf*) ;
 int m_length (struct mbuf*,int *) ;
 scalar_t__ mtod (struct mbuf*,int ) ;
 struct mbuf* sppp_dequeue (TYPE_2__*) ;

__attribute__((used)) static void cx_send (drv_t *d)
{
 struct mbuf *m;
 u_short len;

 CX_DEBUG2 (d, ("cx_send\n"));


 if (! d->running)
  return;


 if (! cx_get_dsr (d->chan) && ! cx_get_loop(d->chan))
  return;

 if (cx_buf_free (d->chan)) {






  m = sppp_dequeue (d->ifp);

  if (! m)
   return;

  BPF_MTAP (d->ifp, m);

  len = m_length (m, ((void*)0));
  if (! m->m_next)
   cx_send_packet (d->chan, (u_char*)mtod (m, caddr_t),
    len, 0);
  else {
   u_char buf [DMABUFSZ];
   m_copydata (m, 0, len, buf);
   cx_send_packet (d->chan, buf, len, 0);
  }
  m_freem (m);


  d->timeout = 10;
 }

 d->ifp->if_drv_flags |= IFF_DRV_OACTIVE;

}
