
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct epair_dpcpu {int dummy; } ;


 struct epair_dpcpu* DPCPU_ID_PTR (int ,struct epair_dpcpu*) ;
 int EPAIR_LOCK (struct epair_dpcpu*) ;
 int EPAIR_UNLOCK (struct epair_dpcpu*) ;
 int cpuid_from_ifp (struct ifnet*) ;
 int epair_start_locked (struct ifnet*) ;

__attribute__((used)) static void
epair_start(struct ifnet *ifp)
{
 struct epair_dpcpu *epair_dpcpu;

 epair_dpcpu = DPCPU_ID_PTR(cpuid_from_ifp(ifp), epair_dpcpu);
 EPAIR_LOCK(epair_dpcpu);
 epair_start_locked(ifp);
 EPAIR_UNLOCK(epair_dpcpu);
}
