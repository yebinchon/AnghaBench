
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_short ;
typedef int u_char ;
struct mbuf {int m_next; } ;
struct TYPE_9__ {char* name; int timeout; TYPE_2__* ifp; TYPE_3__* chan; int queue; int hi_queue; int running; } ;
typedef TYPE_1__ drv_t ;
struct TYPE_11__ {size_t te; scalar_t__ type; int ** tbuf; scalar_t__ lloop; int tn; } ;
struct TYPE_10__ {int if_drv_flags; } ;


 int BPF_MTAP (TYPE_2__*,struct mbuf*) ;
 int BUFSZ ;
 int CP_DEBUG2 (TYPE_1__*,char*) ;
 int IFF_DRV_OACTIVE ;
 int IF_DEQUEUE (int *,struct mbuf*) ;
 scalar_t__ T_SERIAL ;
 int caddr_t ;
 scalar_t__ cp_get_dsr (TYPE_3__*) ;
 int cp_send_packet (TYPE_3__*,int *,int,int ) ;
 scalar_t__ cp_transmit_space (TYPE_3__*) ;
 int m_copydata (struct mbuf*,int ,int,int *) ;
 int m_freem (struct mbuf*) ;
 int m_length (struct mbuf*,int *) ;
 scalar_t__ mtod (struct mbuf*,int ) ;
 int printf (char*,char*,int) ;
 struct mbuf* sppp_dequeue (TYPE_2__*) ;

__attribute__((used)) static void cp_send (drv_t *d)
{
 struct mbuf *m;
 u_short len;

 CP_DEBUG2 (d, ("cp_send, tn=%d te=%d\n", d->chan->tn, d->chan->te));


 if (! d->running)
  return;


 if (! (d->chan->lloop || d->chan->type != T_SERIAL ||
  cp_get_dsr (d->chan)))
  return;

 while (cp_transmit_space (d->chan)) {






  m = sppp_dequeue (d->ifp);

  if (! m)
   return;

  BPF_MTAP (d->ifp, m);

  len = m_length (m, ((void*)0));
  if (len >= BUFSZ)
   printf ("%s: too long packet: %d bytes: ",
    d->name, len);
  else if (! m->m_next)
   cp_send_packet (d->chan, (u_char*) mtod (m, caddr_t), len, 0);
  else {
   u_char *buf = d->chan->tbuf[d->chan->te];
   m_copydata (m, 0, len, buf);
   cp_send_packet (d->chan, buf, len, 0);
  }
  m_freem (m);

  d->timeout = 10;
 }

 d->ifp->if_drv_flags |= IFF_DRV_OACTIVE;

}
