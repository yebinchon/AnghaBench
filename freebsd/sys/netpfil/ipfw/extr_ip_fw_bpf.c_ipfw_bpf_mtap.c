
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;


 int BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int NET_EPOCH_ASSERT () ;
 struct ifnet* V_log_if ;

void
ipfw_bpf_mtap(struct mbuf *m)
{
 struct ifnet *ifp = V_log_if;

 NET_EPOCH_ASSERT();
 if (ifp != ((void*)0))
  BPF_MTAP(ifp, m);
}
