
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct netisr_workstream {int nws_pendingbits; int nws_flags; } ;
struct netisr_work {scalar_t__ nw_len; scalar_t__ nw_qlimit; scalar_t__ nw_watermark; int nw_qdrops; int nw_queued; struct mbuf* nw_tail; struct mbuf* nw_head; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;


 int ENOBUFS ;
 int NWS_DISPATCHING ;
 int NWS_LOCK_ASSERT (struct netisr_workstream*) ;
 int NWS_RUNNING ;
 int NWS_SCHEDULED ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static int
netisr_queue_workstream(struct netisr_workstream *nwsp, u_int proto,
    struct netisr_work *npwp, struct mbuf *m, int *dosignalp)
{

 NWS_LOCK_ASSERT(nwsp);

 *dosignalp = 0;
 if (npwp->nw_len < npwp->nw_qlimit) {
  m->m_nextpkt = ((void*)0);
  if (npwp->nw_head == ((void*)0)) {
   npwp->nw_head = m;
   npwp->nw_tail = m;
  } else {
   npwp->nw_tail->m_nextpkt = m;
   npwp->nw_tail = m;
  }
  npwp->nw_len++;
  if (npwp->nw_len > npwp->nw_watermark)
   npwp->nw_watermark = npwp->nw_len;





  nwsp->nws_pendingbits |= (1 << proto);
  if (!(nwsp->nws_flags &
      (NWS_RUNNING | NWS_DISPATCHING | NWS_SCHEDULED))) {
   nwsp->nws_flags |= NWS_SCHEDULED;
   *dosignalp = 1;
  }
  npwp->nw_queued++;
  return (0);
 } else {
  m_freem(m);
  npwp->nw_qdrops++;
  return (ENOBUFS);
 }
}
