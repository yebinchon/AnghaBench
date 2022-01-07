
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ixgbe_adv_tx_context_desc {void* mss_l4len_idx; void* seqnum_seed; void* type_tucmd_mlhl; void* vlan_macip_lens; } ;
typedef TYPE_1__* if_pkt_info_t ;
struct TYPE_3__ {scalar_t__ ipi_vtag; scalar_t__ ipi_ehdrlen; int ipi_len; int ipi_csum_flags; int ipi_ip_hlen; int ipi_tcp_hlen; int ipi_tso_segsz; int ipi_flags; int ipi_ipproto; } ;


 int CSUM_IP ;
 int CSUM_IP6_SCTP ;
 int CSUM_IP6_TCP ;
 int CSUM_IP6_UDP ;
 int CSUM_IP_SCTP ;
 int CSUM_IP_TCP ;
 int CSUM_IP_UDP ;
 int CSUM_TSO ;
 int ETHER_HDR_LEN ;
 int ETHER_VLAN_ENCAP_LEN ;
 int FALSE ;
 int IPI_TX_IPV4 ;
 int IPI_TX_IPV6 ;



 int IXGBE_ADVTXD_DCMD_DEXT ;
 int IXGBE_ADVTXD_DTYP_CTXT ;
 int IXGBE_ADVTXD_L4LEN_SHIFT ;
 int IXGBE_ADVTXD_MACLEN_SHIFT ;
 int IXGBE_ADVTXD_MSS_SHIFT ;
 int IXGBE_ADVTXD_PAYLEN_SHIFT ;
 int IXGBE_ADVTXD_TUCMD_IPV4 ;
 int IXGBE_ADVTXD_TUCMD_IPV6 ;
 int IXGBE_ADVTXD_TUCMD_L4T_SCTP ;
 int IXGBE_ADVTXD_TUCMD_L4T_TCP ;
 int IXGBE_ADVTXD_TUCMD_L4T_UDP ;
 int IXGBE_ADVTXD_VLAN_SHIFT ;
 int IXGBE_TXD_POPTS_IXSM ;
 int IXGBE_TXD_POPTS_TXSM ;
 int TRUE ;
 int htole16 (scalar_t__) ;
 void* htole32 (int) ;

__attribute__((used)) static int
ixgbe_tx_ctx_setup(struct ixgbe_adv_tx_context_desc *TXD, if_pkt_info_t pi)
{
 u32 vlan_macip_lens, type_tucmd_mlhl;
 u32 olinfo_status, mss_l4len_idx, pktlen, offload;
 u8 ehdrlen;

 offload = TRUE;
 olinfo_status = mss_l4len_idx = vlan_macip_lens = type_tucmd_mlhl = 0;

 vlan_macip_lens |= (htole16(pi->ipi_vtag) << IXGBE_ADVTXD_VLAN_SHIFT);
 if (pi->ipi_ehdrlen == 0) {
  ehdrlen = ETHER_HDR_LEN;
  ehdrlen += (pi->ipi_vtag != 0) ? ETHER_VLAN_ENCAP_LEN : 0;
 } else
  ehdrlen = pi->ipi_ehdrlen;
 vlan_macip_lens |= ehdrlen << IXGBE_ADVTXD_MACLEN_SHIFT;

 pktlen = pi->ipi_len;

 if (pi->ipi_csum_flags & CSUM_TSO) {

  pktlen = pi->ipi_len - ehdrlen - pi->ipi_ip_hlen - pi->ipi_tcp_hlen;
  mss_l4len_idx |= (pi->ipi_tso_segsz << IXGBE_ADVTXD_MSS_SHIFT);
  mss_l4len_idx |= (pi->ipi_tcp_hlen << IXGBE_ADVTXD_L4LEN_SHIFT);
 }

 olinfo_status |= pktlen << IXGBE_ADVTXD_PAYLEN_SHIFT;

 if (pi->ipi_flags & IPI_TX_IPV4) {
  type_tucmd_mlhl |= IXGBE_ADVTXD_TUCMD_IPV4;

  if (pi->ipi_csum_flags & (CSUM_IP|CSUM_TSO))
   olinfo_status |= IXGBE_TXD_POPTS_IXSM << 8;
 } else if (pi->ipi_flags & IPI_TX_IPV6)
  type_tucmd_mlhl |= IXGBE_ADVTXD_TUCMD_IPV6;
 else
  offload = FALSE;

 vlan_macip_lens |= pi->ipi_ip_hlen;

 switch (pi->ipi_ipproto) {
 case 129:
  if (pi->ipi_csum_flags & (CSUM_IP_TCP | CSUM_IP6_TCP | CSUM_TSO))
   type_tucmd_mlhl |= IXGBE_ADVTXD_TUCMD_L4T_TCP;
  else
   offload = FALSE;
  break;
 case 128:
  if (pi->ipi_csum_flags & (CSUM_IP_UDP | CSUM_IP6_UDP))
   type_tucmd_mlhl |= IXGBE_ADVTXD_TUCMD_L4T_UDP;
  else
   offload = FALSE;
  break;
 case 130:
  if (pi->ipi_csum_flags & (CSUM_IP_SCTP | CSUM_IP6_SCTP))
   type_tucmd_mlhl |= IXGBE_ADVTXD_TUCMD_L4T_SCTP;
  else
   offload = FALSE;
  break;
 default:
  offload = FALSE;
  break;
 }

 if (offload)
  olinfo_status |= IXGBE_TXD_POPTS_TXSM << 8;

 type_tucmd_mlhl |= IXGBE_ADVTXD_DCMD_DEXT | IXGBE_ADVTXD_DTYP_CTXT;


 TXD->vlan_macip_lens = htole32(vlan_macip_lens);
 TXD->type_tucmd_mlhl = htole32(type_tucmd_mlhl);
 TXD->seqnum_seed = htole32(0);
 TXD->mss_l4len_idx = htole32(mss_l4len_idx);

 return (olinfo_status);
}
