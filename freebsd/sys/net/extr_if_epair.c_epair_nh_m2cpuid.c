
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;


 int cpuid_from_ifp (int ) ;

__attribute__((used)) static struct mbuf *
epair_nh_m2cpuid(struct mbuf *m, uintptr_t source, u_int *cpuid)
{

 *cpuid = cpuid_from_ifp(m->m_pkthdr.rcvif);

 return (m);
}
