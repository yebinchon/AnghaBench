
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int flowid; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;


 int M_ASSERTPKTHDR (struct mbuf*) ;
 int M_HASHTYPE_GET (struct mbuf*) ;
 int rss_hash2cpuid (int ,int ) ;

struct mbuf *
rss_m2cpuid(struct mbuf *m, uintptr_t source, u_int *cpuid)
{

 M_ASSERTPKTHDR(m);
 *cpuid = rss_hash2cpuid(m->m_pkthdr.flowid, M_HASHTYPE_GET(m));
 return (m);
}
