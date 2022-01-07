
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct i40e_rx_ptype_decoded {scalar_t__ outer_ip; scalar_t__ outer_ip_ver; } ;
typedef TYPE_1__* if_rxd_info_t ;
struct TYPE_3__ {int iri_csum_data; int iri_csum_flags; } ;


 int CSUM_L3_CALC ;
 int CSUM_L3_VALID ;
 int CSUM_L4_CALC ;
 int CSUM_L4_VALID ;
 int I40E_RX_DESC_ERROR_IPE_SHIFT ;
 int I40E_RX_DESC_ERROR_L4E_SHIFT ;
 int I40E_RX_DESC_STATUS_IPV6EXADD_SHIFT ;
 int I40E_RX_DESC_STATUS_L3L4P_SHIFT ;
 scalar_t__ I40E_RX_PTYPE_OUTER_IP ;
 scalar_t__ I40E_RX_PTYPE_OUTER_IPV6 ;
 struct i40e_rx_ptype_decoded decode_rx_desc_ptype (int ) ;
 int htons (int) ;

__attribute__((used)) static void
ixl_rx_checksum(if_rxd_info_t ri, u32 status, u32 error, u8 ptype)
{
 struct i40e_rx_ptype_decoded decoded;

 ri->iri_csum_flags = 0;


 if (!(status & (1 << I40E_RX_DESC_STATUS_L3L4P_SHIFT)))
  return;

 decoded = decode_rx_desc_ptype(ptype);


 if (decoded.outer_ip == I40E_RX_PTYPE_OUTER_IP &&
     decoded.outer_ip_ver == I40E_RX_PTYPE_OUTER_IPV6) {
  if (status &
      (1 << I40E_RX_DESC_STATUS_IPV6EXADD_SHIFT)) {
   ri->iri_csum_flags = 0;
   return;
  }
 }

 ri->iri_csum_flags |= CSUM_L3_CALC;


 if (error & (1 << I40E_RX_DESC_ERROR_IPE_SHIFT))
  return;

 ri->iri_csum_flags |= CSUM_L3_VALID;
 ri->iri_csum_flags |= CSUM_L4_CALC;


 if (error & (1 << I40E_RX_DESC_ERROR_L4E_SHIFT))
  return;

 ri->iri_csum_flags |= CSUM_L4_VALID;
 ri->iri_csum_data |= htons(0xffff);
}
