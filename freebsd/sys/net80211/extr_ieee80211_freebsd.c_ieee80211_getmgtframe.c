
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ u_int ;
struct mbuf {int * m_data; } ;


 int KASSERT (int,char*) ;
 scalar_t__ MCLBYTES ;
 int MC_ALIGN (struct mbuf*,scalar_t__) ;
 scalar_t__ MINCLSIZE ;
 int MT_DATA ;
 int M_ALIGN (struct mbuf*,scalar_t__) ;
 int M_NOWAIT ;
 int M_PKTHDR ;
 struct mbuf* m_getcl (int ,int ,int ) ;
 struct mbuf* m_gethdr (int ,int ) ;
 scalar_t__ roundup2 (int,int) ;

struct mbuf *
ieee80211_getmgtframe(uint8_t **frm, int headroom, int pktlen)
{
 struct mbuf *m;
 u_int len;





 len = roundup2(headroom + pktlen, 4);
 KASSERT(len <= MCLBYTES, ("802.11 mgt frame too large: %u", len));
 if (len < MINCLSIZE) {
  m = m_gethdr(M_NOWAIT, MT_DATA);






  if (m != ((void*)0))
   M_ALIGN(m, len);
 } else {
  m = m_getcl(M_NOWAIT, MT_DATA, M_PKTHDR);
  if (m != ((void*)0))
   MC_ALIGN(m, len);
 }
 if (m != ((void*)0)) {
  m->m_data += headroom;
  *frm = m->m_data;
 }
 return m;
}
