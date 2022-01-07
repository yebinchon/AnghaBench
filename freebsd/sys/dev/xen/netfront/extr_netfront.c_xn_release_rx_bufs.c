
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfront_rxq {int* grant_ref; struct mbuf** mbufs; int gref_head; } ;
struct mbuf {int dummy; } ;


 int GRANT_REF_INVALID ;
 int NET_RX_RING_SIZE ;
 int gnttab_end_foreign_access_ref (int) ;
 int gnttab_release_grant_reference (int *,int) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static void
xn_release_rx_bufs(struct netfront_rxq *rxq)
{
 int i, ref;
 struct mbuf *m;

 for (i = 0; i < NET_RX_RING_SIZE; i++) {
  m = rxq->mbufs[i];

  if (m == ((void*)0))
   continue;

  ref = rxq->grant_ref[i];
  if (ref == GRANT_REF_INVALID)
   continue;

  gnttab_end_foreign_access_ref(ref);
  gnttab_release_grant_reference(&rxq->gref_head, ref);
  rxq->mbufs[i] = ((void*)0);
  rxq->grant_ref[i] = GRANT_REF_INVALID;
  m_freem(m);
 }
}
