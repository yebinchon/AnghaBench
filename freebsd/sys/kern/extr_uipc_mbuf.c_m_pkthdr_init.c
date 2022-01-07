
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int numa_domain; } ;
struct mbuf {TYPE_1__ m_pkthdr; int m_pktdat; int m_data; } ;


 int M_NODOM ;
 int bzero (TYPE_1__*,int) ;
 int mac_mbuf_init (struct mbuf*,int) ;

int
m_pkthdr_init(struct mbuf *m, int how)
{



 m->m_data = m->m_pktdat;
 bzero(&m->m_pkthdr, sizeof(m->m_pkthdr));
 return (0);
}
