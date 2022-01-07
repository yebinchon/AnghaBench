
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;
struct epair_dpcpu {int dummy; } ;


 struct epair_dpcpu* DPCPU_ID_PTR (int ,struct epair_dpcpu*) ;
 int EPAIR_LOCK (struct epair_dpcpu*) ;
 int EPAIR_UNLOCK (struct epair_dpcpu*) ;
 int cpuid_from_ifp (struct ifnet*) ;
 int epair_transmit_locked (struct ifnet*,struct mbuf*) ;

__attribute__((used)) static int
epair_transmit(struct ifnet *ifp, struct mbuf *m)
{
 struct epair_dpcpu *epair_dpcpu;
 int error;

 epair_dpcpu = DPCPU_ID_PTR(cpuid_from_ifp(ifp), epair_dpcpu);
 EPAIR_LOCK(epair_dpcpu);
 error = epair_transmit_locked(ifp, m);
 EPAIR_UNLOCK(epair_dpcpu);
 return (error);
}
