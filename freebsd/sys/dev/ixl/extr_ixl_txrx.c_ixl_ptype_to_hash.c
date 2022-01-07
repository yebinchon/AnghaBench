
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i40e_rx_ptype_decoded {scalar_t__ outer_ip; scalar_t__ outer_ip_ver; int inner_prot; int known; } ;




 scalar_t__ I40E_RX_PTYPE_OUTER_IPV4 ;
 scalar_t__ I40E_RX_PTYPE_OUTER_IPV6 ;
 scalar_t__ I40E_RX_PTYPE_OUTER_L2 ;
 int M_HASHTYPE_OPAQUE ;
 int M_HASHTYPE_RSS_IPV4 ;
 int M_HASHTYPE_RSS_IPV6 ;
 int M_HASHTYPE_RSS_TCP_IPV4 ;
 int M_HASHTYPE_RSS_TCP_IPV6 ;
 int M_HASHTYPE_RSS_UDP_IPV4 ;
 int M_HASHTYPE_RSS_UDP_IPV6 ;
 struct i40e_rx_ptype_decoded decode_rx_desc_ptype (int ) ;

__attribute__((used)) static inline int
ixl_ptype_to_hash(u8 ptype)
{
        struct i40e_rx_ptype_decoded decoded;

 decoded = decode_rx_desc_ptype(ptype);

 if (!decoded.known)
  return M_HASHTYPE_OPAQUE;

 if (decoded.outer_ip == I40E_RX_PTYPE_OUTER_L2)
  return M_HASHTYPE_OPAQUE;


        if (decoded.outer_ip_ver == I40E_RX_PTYPE_OUTER_IPV6) {
  switch (decoded.inner_prot) {
  case 129:
   return M_HASHTYPE_RSS_TCP_IPV6;
  case 128:
   return M_HASHTYPE_RSS_UDP_IPV6;
  default:
   return M_HASHTYPE_RSS_IPV6;
  }
 }
        if (decoded.outer_ip_ver == I40E_RX_PTYPE_OUTER_IPV4) {
  switch (decoded.inner_prot) {
  case 129:
   return M_HASHTYPE_RSS_TCP_IPV4;
  case 128:
   return M_HASHTYPE_RSS_UDP_IPV4;
  default:
   return M_HASHTYPE_RSS_IPV4;
  }
 }

 return M_HASHTYPE_OPAQUE;
}
