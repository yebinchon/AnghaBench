
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int len; } ;
struct mbuf {int m_flags; int m_len; struct mbuf* m_next; scalar_t__ m_data; TYPE_1__ m_pkthdr; } ;


 int M_PKTHDR ;
 int printf (char*,...) ;

void
m_print(const struct mbuf *m, int maxlen)
{
 int len;
 int pdata;
 const struct mbuf *m2;

 if (m == ((void*)0)) {
  printf("mbuf: %p\n", m);
  return;
 }

 if (m->m_flags & M_PKTHDR)
  len = m->m_pkthdr.len;
 else
  len = -1;
 m2 = m;
 while (m2 != ((void*)0) && (len == -1 || len)) {
  pdata = m2->m_len;
  if (maxlen != -1 && pdata > maxlen)
   pdata = maxlen;
  printf("mbuf: %p len: %d, next: %p, %b%s", m2, m2->m_len,
      m2->m_next, m2->m_flags, "\20\20freelist\17skipfw"
      "\11proto5\10proto4\7proto3\6proto2\5proto1\4rdonly"
      "\3eor\2pkthdr\1ext", pdata ? "" : "\n");
  if (pdata)
   printf(", %*D\n", pdata, (u_char *)m2->m_data, "-");
  if (len != -1)
   len -= m2->m_len;
  m2 = m2->m_next;
 }
 if (len > 0)
  printf("%d bytes unaccounted for.\n", len);
 return;
}
