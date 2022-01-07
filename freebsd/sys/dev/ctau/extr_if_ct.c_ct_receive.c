
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct TYPE_7__ {int queue; scalar_t__ ifp; int hook; int running; } ;
typedef TYPE_2__ drv_t ;
struct TYPE_8__ {int debug; TYPE_2__* sys; } ;
typedef TYPE_3__ ct_chan_t ;


 int BPF_MTAP (scalar_t__,struct mbuf*) ;
 int CT_DEBUG (TYPE_2__*,char*) ;
 int IFCOUNTER_IPACKETS ;
 int IFCOUNTER_IQDROPS ;
 int IF_ENQUEUE (int *,struct mbuf*) ;
 int NG_SEND_DATA_ONLY (int,int ,struct mbuf*) ;
 int if_inc_counter (scalar_t__,int ,int) ;
 int m_print (struct mbuf*,int ) ;
 struct mbuf* makembuf (char*,int) ;

__attribute__((used)) static void ct_receive (ct_chan_t *c, char *data, int len)
{
 drv_t *d = c->sys;
 struct mbuf *m;




 if (!d || !d->running)
  return;

 m = makembuf (data, len);
 if (! m) {
  CT_DEBUG (d, ("no memory for packet\n"));

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
