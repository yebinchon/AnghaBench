
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct ifnet {int dummy; } ;


 int BPF_TAP (struct ifnet*,int *,int ) ;
 int NET_EPOCH_ASSERT () ;
 struct ifnet* V_log_if ;

void
ipfw_bpf_tap(u_char *pkt, u_int pktlen)
{
 struct ifnet *ifp = V_log_if;

 NET_EPOCH_ASSERT();
 if (ifp != ((void*)0))
  BPF_TAP(ifp, pkt, pktlen);
}
