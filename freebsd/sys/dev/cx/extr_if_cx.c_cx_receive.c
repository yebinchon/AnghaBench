
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ rcvif; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct TYPE_10__ {int queue; scalar_t__ ifp; int hook; int running; int intr_action; int aqueue; TYPE_1__* tty; } ;
typedef TYPE_3__ drv_t ;
struct TYPE_11__ {scalar_t__ mode; int debug; int ierrs; TYPE_3__* sys; } ;
typedef TYPE_4__ cx_chan_t ;
typedef int async_q ;
struct TYPE_8__ {int t_state; } ;


 int AQ_GSZ (int *) ;
 int AQ_PUSH (int *,unsigned char) ;
 int BF_SZ ;
 int BPF_MTAP (scalar_t__,struct mbuf*) ;
 int CX_DEBUG (TYPE_3__*,char*) ;
 int CX_OVERRUN ;
 int CX_READ ;
 int IFCOUNTER_IPACKETS ;
 int IFCOUNTER_IQDROPS ;
 int IF_ENQUEUE (int *,struct mbuf*) ;
 int MY_SOFT_INTR ;
 scalar_t__ M_ASYNC ;
 int NG_SEND_DATA_ONLY (int,int ,struct mbuf*) ;
 int TS_ISOPEN ;
 int cx_error (TYPE_4__*,int ) ;
 int cx_fast_ih ;
 int if_inc_counter (scalar_t__,int ,int) ;
 int m_print (struct mbuf*,int ) ;
 struct mbuf* makembuf (char*,int) ;
 int swi_sched (int ,int ) ;

__attribute__((used)) static void cx_receive (cx_chan_t *c, char *data, int len)
{
 drv_t *d = c->sys;
 struct mbuf *m;
 char *cc = data;




 if (!d)
  return;

 if (c->mode == M_ASYNC && d->tty) {
  if (d->tty->t_state & TS_ISOPEN) {
   async_q *q = &d->aqueue;
   int size = BF_SZ - 1 - AQ_GSZ (q);

   if (len <= 0 && !size)
    return;

   if (len > size) {
    c->ierrs++;
    cx_error (c, CX_OVERRUN);
    len = size - 1;
   }

   while (len--) {
    AQ_PUSH (q, *(unsigned char *)cc);
    cc++;
   }

   d->intr_action |= CX_READ;
   MY_SOFT_INTR = 1;
   swi_sched (cx_fast_ih, 0);
  }
  return;
 }
 if (! d->running)
  return;

 m = makembuf (data, len);
 if (! m) {
  CX_DEBUG (d, ("no memory for packet\n"));

  if_inc_counter(d->ifp, IFCOUNTER_IQDROPS, 1);

  return;
 }
 if (c->debug > 1)
  m_print (m, 0);




 if_inc_counter(d->ifp, IFCOUNTER_IPACKETS, 1);
 m->m_pkthdr.rcvif = d->ifp;


 BPF_MTAP(d->ifp, m);
 IF_ENQUEUE (&d->queue, m);

}
