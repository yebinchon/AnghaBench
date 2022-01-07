
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pfsync_pkt {int dummy; } ;
struct TYPE_3__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct TYPE_4__ {int pfsyncs_badlen; } ;


 TYPE_2__ V_pfsyncstats ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static int
pfsync_in_eof(struct pfsync_pkt *pkt, struct mbuf *m, int offset, int count)
{

 if (offset != m->m_pkthdr.len)
  V_pfsyncstats.pfsyncs_badlen++;


 m_freem(m);
 return (-1);
}
