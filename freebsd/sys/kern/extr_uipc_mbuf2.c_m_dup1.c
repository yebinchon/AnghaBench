
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_flags; int m_len; int m_type; } ;


 int MCLBYTES ;
 int MINCLSIZE ;
 int M_PKTHDR ;
 int caddr_t ;
 int m_copydata (struct mbuf*,int,int,int ) ;
 int m_dup_pkthdr (struct mbuf*,struct mbuf*,int) ;
 int m_free (struct mbuf*) ;
 struct mbuf* m_get (int,int ) ;
 struct mbuf* m_getcl (int,int ,int) ;
 struct mbuf* m_gethdr (int,int ) ;
 int mtod (struct mbuf*,int ) ;

__attribute__((used)) static struct mbuf *
m_dup1(struct mbuf *m, int off, int len, int wait)
{
 struct mbuf *n;
 int copyhdr;

 if (len > MCLBYTES)
  return ((void*)0);
 if (off == 0 && (m->m_flags & M_PKTHDR) != 0)
  copyhdr = 1;
 else
  copyhdr = 0;
 if (len >= MINCLSIZE) {
  if (copyhdr == 1)
   n = m_getcl(wait, m->m_type, M_PKTHDR);
  else
   n = m_getcl(wait, m->m_type, 0);
 } else {
  if (copyhdr == 1)
   n = m_gethdr(wait, m->m_type);
  else
   n = m_get(wait, m->m_type);
 }
 if (!n)
  return ((void*)0);

 if (copyhdr && !m_dup_pkthdr(n, m, wait)) {
  m_free(n);
  return ((void*)0);
 }
 m_copydata(m, off, len, mtod(n, caddr_t));
 n->m_len = len;
 return n;
}
