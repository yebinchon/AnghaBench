
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mbuf {int dummy; } ;
struct ifnet {int if_bpf; } ;
struct ether_header {int ether_dhost; int ether_shost; int ether_type; } ;
typedef int eh ;


 int ETHER_ADDR_LEN ;
 int bpf_mtap2 (int ,struct ether_header*,int,struct mbuf*) ;
 int bzero (int *,int ) ;

void
ipoib_mtap_proto(struct ifnet *ifp, struct mbuf *mb, uint16_t proto)
{
 struct ether_header eh;

 eh.ether_type = proto;
 bzero(&eh.ether_shost, ETHER_ADDR_LEN);
 bzero(&eh.ether_dhost, ETHER_ADDR_LEN);
 bpf_mtap2(ifp->if_bpf, &eh, sizeof(eh), mb);
}
