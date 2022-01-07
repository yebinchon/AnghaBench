
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pfsync_tdb {int dummy; } ;
struct pfsync_pkt {int dummy; } ;
struct mbuf {scalar_t__ m_data; } ;
struct TYPE_2__ {int pfsyncs_badlen; } ;


 TYPE_1__ V_pfsyncstats ;
 struct mbuf* m_pulldown (struct mbuf*,int,int,int*) ;
 int pfsync_update_net_tdb (struct pfsync_tdb*) ;

__attribute__((used)) static int
pfsync_in_tdb(struct pfsync_pkt *pkt, struct mbuf *m, int offset, int count)
{
 int len = count * sizeof(struct pfsync_tdb);
 return (len);
}
