
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct mbuf {int m_data; scalar_t__ m_len; struct mbuf* m_next; } ;
typedef int iflib_rxq_t ;
typedef TYPE_2__* if_rxsd_t ;
typedef TYPE_3__* if_rxd_info_t ;
typedef int * caddr_t ;
struct TYPE_12__ {scalar_t__ irf_len; } ;
struct TYPE_11__ {int iri_nfrags; int iri_pad; int iri_len; TYPE_4__* iri_frags; } ;
struct TYPE_10__ {TYPE_1__* ifsd_fl; int ** ifsd_cl; } ;
struct TYPE_9__ {int ifl_cltype; } ;


 int MPASS (int ) ;
 int MT_DATA ;
 int M_EXT ;
 int M_NOWAIT ;
 int M_PKTHDR ;
 int PFIL_CONSUMED ;
 int PFIL_DROPPED ;
 int PFIL_PASS ;
 int m_cljset (struct mbuf*,int *,int ) ;
 int m_free (struct mbuf*) ;
 int m_init (struct mbuf*,int ,int ,int) ;
 struct mbuf* rxd_frag_to_sd (int ,TYPE_4__*,int,TYPE_2__*,int*,TYPE_3__*) ;

__attribute__((used)) static struct mbuf *
assemble_segments(iflib_rxq_t rxq, if_rxd_info_t ri, if_rxsd_t sd, int *pf_rv)
{
 struct mbuf *m, *mh, *mt;
 caddr_t cl;
 int *pf_rv_ptr, flags, i, padlen;
 bool consumed;

 i = 0;
 mh = ((void*)0);
 consumed = 0;
 *pf_rv = PFIL_PASS;
 pf_rv_ptr = pf_rv;
 do {
  m = rxd_frag_to_sd(rxq, &ri->iri_frags[i], !consumed, sd,
      pf_rv_ptr, ri);

  MPASS(*sd->ifsd_cl != ((void*)0));





  if (ri->iri_frags[i].irf_len == 0 || consumed ||
      *pf_rv == PFIL_CONSUMED || *pf_rv == PFIL_DROPPED) {
   if (mh == ((void*)0)) {

    consumed = 1;
    pf_rv_ptr = ((void*)0);
    continue;
   }

   m_init(m, M_NOWAIT, MT_DATA, 0);
   m_free(m);
   continue;
  }
  if (mh == ((void*)0)) {
   flags = M_PKTHDR|M_EXT;
   mh = mt = m;
   padlen = ri->iri_pad;
  } else {
   flags = M_EXT;
   mt->m_next = m;
   mt = m;

   padlen = 0;
  }
  cl = *sd->ifsd_cl;
  *sd->ifsd_cl = ((void*)0);


  m_init(m, M_NOWAIT, MT_DATA, flags);
  m_cljset(m, cl, sd->ifsd_fl->ifl_cltype);



  m->m_data += padlen;
  ri->iri_len -= padlen;
  m->m_len = ri->iri_frags[i].irf_len;
 } while (++i < ri->iri_nfrags);

 return (mh);
}
