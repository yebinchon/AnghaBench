
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pfsync_softc {int sc_imo; struct pfsync_bucket* sc_buckets; TYPE_1__* sc_ifp; } ;
struct pfsync_bucket {int b_flags; scalar_t__ b_len; int b_snd; int b_id; } ;
struct mbuf {int m_flags; struct mbuf* m_nextpkt; } ;
struct TYPE_4__ {int pfsyncs_oerrors; int pfsyncs_opackets; } ;
struct TYPE_3__ {int if_vnet; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int IP_RAWOUTPUT ;
 int M_SKIP_FIREWALL ;
 int PFSYNCF_BUCKET_PUSH ;
 int PFSYNC_BUCKET_LOCK (struct pfsync_bucket*) ;
 int PFSYNC_BUCKET_UNLOCK (struct pfsync_bucket*) ;
 scalar_t__ PFSYNC_MINPKT ;
 TYPE_2__ V_pfsyncstats ;
 int _IF_DEQUEUE_ALL (int *,struct mbuf*) ;
 scalar_t__ ip_output (struct mbuf*,int *,int *,int ,int *,int *) ;
 int pfsync_buckets ;
 int pfsync_sendout (int ,int ) ;

__attribute__((used)) static void
pfsyncintr(void *arg)
{
 struct pfsync_softc *sc = arg;
 struct pfsync_bucket *b;
 struct mbuf *m, *n;
 int c;

 CURVNET_SET(sc->sc_ifp->if_vnet);

 for (c = 0; c < pfsync_buckets; c++) {
  b = &sc->sc_buckets[c];

  PFSYNC_BUCKET_LOCK(b);
  if ((b->b_flags & PFSYNCF_BUCKET_PUSH) && b->b_len > PFSYNC_MINPKT) {
   pfsync_sendout(0, b->b_id);
   b->b_flags &= ~PFSYNCF_BUCKET_PUSH;
  }
  _IF_DEQUEUE_ALL(&b->b_snd, m);
  PFSYNC_BUCKET_UNLOCK(b);

  for (; m != ((void*)0); m = n) {

   n = m->m_nextpkt;
   m->m_nextpkt = ((void*)0);






   if (m->m_flags & M_SKIP_FIREWALL)
    ip_output(m, ((void*)0), ((void*)0), 0, ((void*)0), ((void*)0));
   else if (ip_output(m, ((void*)0), ((void*)0), IP_RAWOUTPUT, &sc->sc_imo,
       ((void*)0)) == 0)
    V_pfsyncstats.pfsyncs_opackets++;
   else
    V_pfsyncstats.pfsyncs_oerrors++;
  }
 }
 CURVNET_RESTORE();
}
