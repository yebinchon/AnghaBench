
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct mbuf {int m_data; int m_len; TYPE_1__ m_pkthdr; struct mbuf* m_next; int m_type; } ;


 int IPSEC_ASSERT (int,char*) ;
 scalar_t__ IPSEC_TRAILINGSPACE ;
 int MHLEN ;
 int M_ASSERTPKTHDR (struct mbuf*) ;
 int M_LEADINGSPACE (struct mbuf*) ;
 scalar_t__ M_SIZE (struct mbuf*) ;
 int m_align (struct mbuf*,scalar_t__) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_gethdr (int,int ) ;
 int m_move_pkthdr (struct mbuf*,struct mbuf*) ;

__attribute__((used)) static struct mbuf *
ipsec_prepend(struct mbuf *m, int len, int how)
{
 struct mbuf *n;

 M_ASSERTPKTHDR(m);
 IPSEC_ASSERT(len < MHLEN, ("wrong length"));
 if (M_LEADINGSPACE(m) >= len) {

  m->m_data -= len;
  m->m_len += len;
  m->m_pkthdr.len += len;
  return (m);
 }
 n = m_gethdr(how, m->m_type);
 if (n == ((void*)0)) {
  m_freem(m);
  return (((void*)0));
 }
 m_move_pkthdr(n, m);
 n->m_next = m;
 if (len + IPSEC_TRAILINGSPACE < M_SIZE(n))
  m_align(n, len + IPSEC_TRAILINGSPACE);
 n->m_len = len;
 n->m_pkthdr.len += len;
 return (n);
}
