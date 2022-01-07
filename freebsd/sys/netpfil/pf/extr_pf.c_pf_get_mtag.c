
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_mtag {int dummy; } ;
struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;


 int M_NOWAIT ;
 int PACKET_TAG_PF ;
 int bzero (struct m_tag*,int) ;
 struct m_tag* m_tag_find (struct mbuf*,int ,int *) ;
 int m_tag_prepend (struct mbuf*,struct m_tag*) ;
 int pf_mtag_z ;
 struct m_tag* uma_zalloc (int ,int ) ;

struct pf_mtag *
pf_get_mtag(struct mbuf *m)
{
 struct m_tag *mtag;

 if ((mtag = m_tag_find(m, PACKET_TAG_PF, ((void*)0))) != ((void*)0))
  return ((struct pf_mtag *)(mtag + 1));

 mtag = uma_zalloc(pf_mtag_z, M_NOWAIT);
 if (mtag == ((void*)0))
  return (((void*)0));
 bzero(mtag + 1, sizeof(struct pf_mtag));
 m_tag_prepend(m, mtag);

 return ((struct pf_mtag *)(mtag + 1));
}
