
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int csum_data; int csum_flags; int flowid; int ether_vtag; int rcvif; int len; } ;
struct mbuf {int m_data; scalar_t__ m_len; TYPE_1__ m_pkthdr; int m_flags; } ;
struct if_rxsd {int * ifsd_cl; } ;
typedef int iflib_rxq_t ;
typedef TYPE_2__* if_rxd_info_t ;
struct TYPE_9__ {scalar_t__ irf_len; } ;
struct TYPE_8__ {int iri_nfrags; int iri_csum_data; int iri_csum_flags; int iri_rsstype; int iri_flowid; int iri_vtag; int iri_flags; int iri_ifp; int iri_len; TYPE_3__* iri_frags; } ;


 int IFLIB_RX_COPY_THRESH ;
 int IP_ALIGNED (struct mbuf*) ;
 int MHLEN ;
 scalar_t__ MIN (int ,int ) ;
 int MT_DATA ;
 int M_HASHTYPE_SET (struct mbuf*,int ) ;
 int M_NOWAIT ;
 int M_PKTHDR ;
 int PFIL_PASS ;
 int PFIL_REALLOCED ;
 struct mbuf* assemble_segments (int ,TYPE_2__*,struct if_rxsd*,int*) ;
 int m_init (struct mbuf*,int ,int ,int ) ;
 int memcpy (int,int ,int ) ;
 struct mbuf* rxd_frag_to_sd (int ,TYPE_3__*,int,struct if_rxsd*,int*,TYPE_2__*) ;

__attribute__((used)) static struct mbuf *
iflib_rxd_pkt_get(iflib_rxq_t rxq, if_rxd_info_t ri)
{
 struct if_rxsd sd;
 struct mbuf *m;
 int pf_rv;


 if (ri->iri_nfrags == 1 &&
     ri->iri_frags[0].irf_len <= MIN(IFLIB_RX_COPY_THRESH, MHLEN)) {
  m = rxd_frag_to_sd(rxq, &ri->iri_frags[0], 0, &sd,
      &pf_rv, ri);
  if (pf_rv != PFIL_PASS && pf_rv != PFIL_REALLOCED)
   return (m);
  if (pf_rv == PFIL_PASS) {
   m_init(m, M_NOWAIT, MT_DATA, M_PKTHDR);

   if (!IP_ALIGNED(m))
    m->m_data += 2;

   memcpy(m->m_data, *sd.ifsd_cl, ri->iri_len);
   m->m_len = ri->iri_frags[0].irf_len;
  }
 } else {
  m = assemble_segments(rxq, ri, &sd, &pf_rv);
  if (pf_rv != PFIL_PASS && pf_rv != PFIL_REALLOCED)
   return (m);
 }
 m->m_pkthdr.len = ri->iri_len;
 m->m_pkthdr.rcvif = ri->iri_ifp;
 m->m_flags |= ri->iri_flags;
 m->m_pkthdr.ether_vtag = ri->iri_vtag;
 m->m_pkthdr.flowid = ri->iri_flowid;
 M_HASHTYPE_SET(m, ri->iri_rsstype);
 m->m_pkthdr.csum_flags = ri->iri_csum_flags;
 m->m_pkthdr.csum_data = ri->iri_csum_data;
 return (m);
}
