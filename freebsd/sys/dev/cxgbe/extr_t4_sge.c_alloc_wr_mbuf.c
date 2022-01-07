
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct mbuf {int m_len; TYPE_1__ m_pkthdr; } ;


 int MCLBYTES ;
 int MC_RAW_WR ;
 int MHLEN ;
 int MT_DATA ;
 int M_PKTHDR ;
 int howmany (int,int) ;
 struct mbuf* m_getcl (int,int ,int ) ;
 struct mbuf* m_gethdr (int,int ) ;
 int set_mbuf_cflags (struct mbuf*,int ) ;
 int set_mbuf_len16 (struct mbuf*,int ) ;

struct mbuf *
alloc_wr_mbuf(int len, int how)
{
 struct mbuf *m;

 if (len <= MHLEN)
  m = m_gethdr(how, MT_DATA);
 else if (len <= MCLBYTES)
  m = m_getcl(how, MT_DATA, M_PKTHDR);
 else
  m = ((void*)0);
 if (m == ((void*)0))
  return (((void*)0));
 m->m_pkthdr.len = len;
 m->m_len = len;
 set_mbuf_cflags(m, MC_RAW_WR);
 set_mbuf_len16(m, howmany(len, 16));
 return (m);
}
