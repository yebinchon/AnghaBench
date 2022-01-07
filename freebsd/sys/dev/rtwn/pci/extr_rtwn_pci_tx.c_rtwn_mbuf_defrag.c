
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ len; } ;
struct mbuf {int m_flags; scalar_t__ m_len; TYPE_1__ m_pkthdr; } ;


 int KASSERT (int,char*) ;
 scalar_t__ MCLBYTES ;
 scalar_t__ MJUMPAGESIZE ;
 int MT_DATA ;
 int M_PKTHDR ;
 int caddr_t ;
 int m_copydata (struct mbuf*,int ,scalar_t__,int ) ;
 struct mbuf* m_defrag (struct mbuf*,int) ;
 scalar_t__ m_dup_pkthdr (struct mbuf*,struct mbuf*,int) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_getjcl (int,int ,int,scalar_t__) ;
 int mtod (struct mbuf*,int ) ;

__attribute__((used)) static struct mbuf *
rtwn_mbuf_defrag(struct mbuf *m0, int how)
{
 struct mbuf *m = ((void*)0);

 KASSERT(m0->m_flags & M_PKTHDR,
     ("M_PKTHDR flag is absent (m %p)!", m0));


 if (m0->m_pkthdr.len > MJUMPAGESIZE) {

  return (((void*)0));
 } else if (m0->m_pkthdr.len > MCLBYTES) {
  m = m_getjcl(how, MT_DATA, M_PKTHDR, MJUMPAGESIZE);
  if (m == ((void*)0))
   return (((void*)0));

  if (m_dup_pkthdr(m, m0, how) == 0) {
   m_freem(m);
   return (((void*)0));
  }

  m_copydata(m0, 0, m0->m_pkthdr.len, mtod(m, caddr_t));
  m->m_len = m->m_pkthdr.len;
  m_freem(m0);

  return (m);
 } else
  return (m_defrag(m0, how));
}
