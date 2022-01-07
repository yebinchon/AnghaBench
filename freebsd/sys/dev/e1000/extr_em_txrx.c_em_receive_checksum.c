
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* if_rxd_info_t ;
struct TYPE_3__ {int iri_csum_flags; void* iri_csum_data; } ;


 int CSUM_DATA_VALID ;
 int CSUM_IP_CHECKED ;
 int CSUM_IP_VALID ;
 int CSUM_PSEUDO_HDR ;
 int E1000_RXDEXT_STATERR_IPE ;
 int E1000_RXDEXT_STATERR_TCPE ;
 int E1000_RXD_STAT_IPCS ;
 int E1000_RXD_STAT_IXSM ;
 int E1000_RXD_STAT_TCPCS ;
 int E1000_RXD_STAT_UDPCS ;
 void* htons (int) ;

__attribute__((used)) static void
em_receive_checksum(uint32_t status, if_rxd_info_t ri)
{
 ri->iri_csum_flags = 0;


 if (status & E1000_RXD_STAT_IXSM)
  return;


 if ((status & (E1000_RXD_STAT_IPCS | E1000_RXDEXT_STATERR_IPE)) ==
     E1000_RXD_STAT_IPCS) {
  ri->iri_csum_flags = (CSUM_IP_CHECKED | CSUM_IP_VALID);
 }


 if ((status & (E1000_RXD_STAT_TCPCS | E1000_RXDEXT_STATERR_TCPE)) ==
     E1000_RXD_STAT_TCPCS) {
  ri->iri_csum_flags |= (CSUM_DATA_VALID | CSUM_PSEUDO_HDR);
  ri->iri_csum_data = htons(0xffff);
 }
 if (status & E1000_RXD_STAT_UDPCS) {
  ri->iri_csum_flags |= (CSUM_DATA_VALID | CSUM_PSEUDO_HDR);
  ri->iri_csum_data = htons(0xffff);
 }
}
