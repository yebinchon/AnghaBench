
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {struct mbuf* m_nextpkt; } ;
struct ifnet {int dummy; } ;
struct fw_reass {struct mbuf* fr_frags; } ;
struct fw_com {int fc_frags; } ;


 struct fw_com* IFP2FWC (struct ifnet*) ;
 int M_TEMP ;
 struct fw_reass* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int fr_link ;
 int free (struct fw_reass*,int ) ;
 int m_freem (struct mbuf*) ;

void
firewire_busreset(struct ifnet *ifp)
{
 struct fw_com *fc = IFP2FWC(ifp);
 struct fw_reass *r;
 struct mbuf *m;




 while ((r = STAILQ_FIRST(&fc->fc_frags))) {
  STAILQ_REMOVE_HEAD(&fc->fc_frags, fr_link);
  while (r->fr_frags) {
   m = r->fr_frags;
   r->fr_frags = m->m_nextpkt;
   m_freem(m);
  }
  free(r, M_TEMP);
 }
}
