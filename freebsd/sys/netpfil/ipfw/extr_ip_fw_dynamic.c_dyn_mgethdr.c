
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int len; } ;
struct mbuf {int m_len; int m_data; TYPE_1__ m_pkthdr; int m_flags; } ;


 int MT_DATA ;
 int M_NOWAIT ;
 int M_SETFIB (struct mbuf*,int ) ;
 int M_SKIP_FIREWALL ;
 int bzero (int ,int) ;
 struct mbuf* m_gethdr (int ,int ) ;
 int mac_netinet_firewall_send (struct mbuf*) ;
 scalar_t__ max_linkhdr ;

__attribute__((used)) static struct mbuf *
dyn_mgethdr(int len, uint16_t fibnum)
{
 struct mbuf *m;

 m = m_gethdr(M_NOWAIT, MT_DATA);
 if (m == ((void*)0))
  return (((void*)0));



 M_SETFIB(m, fibnum);
 m->m_data += max_linkhdr;
 m->m_flags |= M_SKIP_FIREWALL;
 m->m_len = m->m_pkthdr.len = len;
 bzero(m->m_data, len);
 return (m);
}
