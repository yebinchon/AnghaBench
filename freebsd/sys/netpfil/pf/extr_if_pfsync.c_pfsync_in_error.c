
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pfsync_pkt {int dummy; } ;
struct mbuf {int dummy; } ;
struct TYPE_2__ {int pfsyncs_badact; } ;


 TYPE_1__ V_pfsyncstats ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static int
pfsync_in_error(struct pfsync_pkt *pkt, struct mbuf *m, int offset, int count)
{
 V_pfsyncstats.pfsyncs_badact++;

 m_freem(m);
 return (-1);
}
