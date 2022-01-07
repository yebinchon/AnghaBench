
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tags; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct m_tag {int dummy; } ;


 int KASSERT (struct mbuf*,char*) ;
 struct m_tag* SLIST_FIRST (int *) ;
 struct m_tag* SLIST_NEXT (struct m_tag*,int ) ;
 int m_tag_delete (struct mbuf*,struct m_tag*) ;
 int m_tag_link ;

void
m_tag_delete_chain(struct mbuf *m, struct m_tag *t)
{
 struct m_tag *p, *q;

 KASSERT(m, ("m_tag_delete_chain: null mbuf"));
 if (t != ((void*)0))
  p = t;
 else
  p = SLIST_FIRST(&m->m_pkthdr.tags);
 if (p == ((void*)0))
  return;
 while ((q = SLIST_NEXT(p, m_tag_link)) != ((void*)0))
  m_tag_delete(m, q);
 m_tag_delete(m, p);
}
