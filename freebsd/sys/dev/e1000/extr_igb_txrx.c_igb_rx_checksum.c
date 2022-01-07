
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
typedef TYPE_1__* if_rxd_info_t ;
struct TYPE_3__ {int iri_csum_flags; int iri_csum_data; } ;


 int CSUM_DATA_VALID ;
 int CSUM_IP_CHECKED ;
 int CSUM_IP_VALID ;
 int CSUM_PSEUDO_HDR ;
 int CSUM_SCTP_VALID ;
 int E1000_RXDADV_PKTTYPE_ETQF ;
 int E1000_RXDADV_PKTTYPE_SCTP ;
 int E1000_RXD_ERR_IPE ;
 int E1000_RXD_ERR_TCPE ;
 int E1000_RXD_STAT_IPCS ;
 int E1000_RXD_STAT_IXSM ;
 int E1000_RXD_STAT_TCPCS ;
 int E1000_RXD_STAT_UDPCS ;
 int FALSE ;
 int htons (int) ;

__attribute__((used)) static void
igb_rx_checksum(u32 staterr, if_rxd_info_t ri, u32 ptype)
{
 u16 status = (u16)staterr;
 u8 errors = (u8) (staterr >> 24);
 bool sctp = FALSE;


 if (status & E1000_RXD_STAT_IXSM) {
  ri->iri_csum_flags = 0;
  return;
 }

 if ((ptype & E1000_RXDADV_PKTTYPE_ETQF) == 0 &&
     (ptype & E1000_RXDADV_PKTTYPE_SCTP) != 0)
  sctp = 1;
 else
  sctp = 0;

 if (status & E1000_RXD_STAT_IPCS) {

  if (!(errors & E1000_RXD_ERR_IPE)) {

   ri->iri_csum_flags = CSUM_IP_CHECKED;
   ri->iri_csum_flags |= CSUM_IP_VALID;
  } else
   ri->iri_csum_flags = 0;
 }

 if (status & (E1000_RXD_STAT_TCPCS | E1000_RXD_STAT_UDPCS)) {
  u64 type = (CSUM_DATA_VALID | CSUM_PSEUDO_HDR);
  if (sctp)
   type = CSUM_SCTP_VALID;

  if (!(errors & E1000_RXD_ERR_TCPE)) {
   ri->iri_csum_flags |= type;
   if (sctp == 0)
    ri->iri_csum_data = htons(0xffff);
  }
 }
 return;
}
