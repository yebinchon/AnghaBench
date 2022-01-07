
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;
typedef scalar_t__ if_t ;


 int BPF_MTAP (struct ifnet*,struct mbuf*) ;

void
if_bpfmtap(if_t ifh, struct mbuf *m)
{
 struct ifnet *ifp = (struct ifnet *)ifh;

 BPF_MTAP(ifp, m);
}
