
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_short ;
typedef int u_char ;
struct mbuf {int m_next; } ;
struct TYPE_10__ {int timeout; TYPE_2__* ifp; TYPE_3__* chan; int queue; int hi_queue; int running; } ;
typedef TYPE_1__ drv_t ;
struct TYPE_12__ {size_t te; int ** tbuf; int tn; } ;
struct TYPE_11__ {int if_drv_flags; } ;


 int BPF_MTAP (TYPE_2__*,struct mbuf*) ;
 int CT_DEBUG2 (TYPE_1__*,char*) ;
 int IFF_DRV_OACTIVE ;
 int IF_DEQUEUE (int *,struct mbuf*) ;
 int caddr_t ;
 scalar_t__ ct_buf_free (TYPE_3__*) ;
 int ct_get_dsr (TYPE_3__*) ;
 int ct_get_loop (TYPE_3__*) ;
 int ct_send_packet (TYPE_3__*,int *,int ,int ) ;
 int m_copydata (struct mbuf*,int ,int ,int *) ;
 int m_freem (struct mbuf*) ;
 int m_length (struct mbuf*,int *) ;
 scalar_t__ mtod (struct mbuf*,int ) ;
 struct mbuf* sppp_dequeue (TYPE_2__*) ;

__attribute__((used)) static void ct_send (drv_t *d)
{
 struct mbuf *m;
 u_short len;

 CT_DEBUG2 (d, ("ct_send, tn=%d\n", d->chan->tn));


 if (! d->running)
  return;


 if (! ct_get_dsr (d->chan) && !ct_get_loop (d->chan))
  return;

 while (ct_buf_free (d->chan)) {






  m = sppp_dequeue (d->ifp);

  if (! m)
   return;

  BPF_MTAP (d->ifp, m);

  len = m_length (m, ((void*)0));
  if (! m->m_next)
   ct_send_packet (d->chan, (u_char*)mtod (m, caddr_t),
    len, 0);
  else {
   m_copydata (m, 0, len, d->chan->tbuf[d->chan->te]);
   ct_send_packet (d->chan, d->chan->tbuf[d->chan->te],
    len, 0);
  }
  m_freem (m);



  d->timeout = 10;
 }

 d->ifp->if_drv_flags |= IFF_DRV_OACTIVE;

}
