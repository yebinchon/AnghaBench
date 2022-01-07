
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int csum_data; int csum_flags; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_capenable; } ;


 int CSUM_DATA_VALID ;
 int CSUM_IP_CHECKED ;
 int CSUM_IP_VALID ;
 int CSUM_PSEUDO_HDR ;
 int IFCAP_RXCSUM ;
 int MGE_RX_IP_FRAGMENT ;
 int MGE_RX_IP_OK ;
 int MGE_RX_L3_IS_IP ;
 int MGE_RX_L4_CSUM_OK ;
 scalar_t__ MGE_RX_L4_IS_TCP (int) ;
 scalar_t__ MGE_RX_L4_IS_UDP (int) ;

__attribute__((used)) static void
mge_offload_process_frame(struct ifnet *ifp, struct mbuf *frame,
    uint32_t status, uint16_t bufsize)
{
 int csum_flags = 0;

 if (ifp->if_capenable & IFCAP_RXCSUM) {
  if ((status & MGE_RX_L3_IS_IP) && (status & MGE_RX_IP_OK))
   csum_flags |= CSUM_IP_CHECKED | CSUM_IP_VALID;

  if ((bufsize & MGE_RX_IP_FRAGMENT) == 0 &&
      (MGE_RX_L4_IS_TCP(status) || MGE_RX_L4_IS_UDP(status)) &&
      (status & MGE_RX_L4_CSUM_OK)) {
   csum_flags |= CSUM_DATA_VALID | CSUM_PSEUDO_HDR;
   frame->m_pkthdr.csum_data = 0xFFFF;
  }

  frame->m_pkthdr.csum_flags = csum_flags;
 }
}
