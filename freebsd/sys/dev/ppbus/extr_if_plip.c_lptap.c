
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct mbuf {int dummy; } ;
struct ifnet {int if_bpf; } ;
typedef int af ;


 int AF_INET ;
 int bpf_mtap2 (int ,int *,int,struct mbuf*) ;

__attribute__((used)) static void
lptap(struct ifnet *ifp, struct mbuf *m)
{
 u_int32_t af = AF_INET;

 bpf_mtap2(ifp->if_bpf, &af, sizeof(af), m);
}
