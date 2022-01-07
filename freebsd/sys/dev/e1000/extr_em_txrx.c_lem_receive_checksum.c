
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* if_rxd_info_t ;
struct TYPE_3__ {int iri_csum_flags; int iri_csum_data; } ;


 int CSUM_DATA_VALID ;
 int CSUM_IP_CHECKED ;
 int CSUM_IP_VALID ;
 int CSUM_PSEUDO_HDR ;
 int E1000_RXD_ERR_IPE ;
 int E1000_RXD_ERR_TCPE ;
 int E1000_RXD_STAT_IPCS ;
 int E1000_RXD_STAT_TCPCS ;
 int htons (int) ;

__attribute__((used)) static void
lem_receive_checksum(int status, int errors, if_rxd_info_t ri)
{

 if (status & E1000_RXD_STAT_IPCS && !(errors & E1000_RXD_ERR_IPE))
  ri->iri_csum_flags = (CSUM_IP_CHECKED|CSUM_IP_VALID);

 if (status & E1000_RXD_STAT_TCPCS) {

  if (!(errors & E1000_RXD_ERR_TCPE)) {
   ri->iri_csum_flags |=
   (CSUM_DATA_VALID | CSUM_PSEUDO_HDR);
   ri->iri_csum_data = htons(0xffff);
  }
 }
}
