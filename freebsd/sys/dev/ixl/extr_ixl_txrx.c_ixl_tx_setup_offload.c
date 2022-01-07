
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct udphdr {int dummy; } ;
struct sctphdr {int dummy; } ;
struct ixl_tx_queue {int dummy; } ;
typedef TYPE_1__* if_pkt_info_t ;
struct TYPE_3__ {int ipi_etype; int ipi_csum_flags; int ipi_ehdrlen; int ipi_ip_hlen; int ipi_ipproto; int ipi_tcp_hlen; } ;




 int I40E_TX_DESC_CMD_IIPT_IPV4 ;
 int I40E_TX_DESC_CMD_IIPT_IPV4_CSUM ;
 int I40E_TX_DESC_CMD_IIPT_IPV6 ;
 int I40E_TX_DESC_CMD_L4T_EOFT_SCTP ;
 int I40E_TX_DESC_CMD_L4T_EOFT_TCP ;
 int I40E_TX_DESC_CMD_L4T_EOFT_UDP ;
 int I40E_TX_DESC_LENGTH_IPLEN_SHIFT ;
 int I40E_TX_DESC_LENGTH_L4_FC_LEN_SHIFT ;
 int I40E_TX_DESC_LENGTH_MACLEN_SHIFT ;



 int IXL_CSUM_IPV4 ;
 int IXL_CSUM_SCTP ;
 int IXL_CSUM_TCP ;
 int IXL_CSUM_UDP ;
 int MPASS (int) ;

__attribute__((used)) static void
ixl_tx_setup_offload(struct ixl_tx_queue *que,
    if_pkt_info_t pi, u32 *cmd, u32 *off)
{
 switch (pi->ipi_etype) {
  default:
   break;
 }

 *off |= (pi->ipi_ehdrlen >> 1) << I40E_TX_DESC_LENGTH_MACLEN_SHIFT;
 *off |= (pi->ipi_ip_hlen >> 2) << I40E_TX_DESC_LENGTH_IPLEN_SHIFT;

 switch (pi->ipi_ipproto) {
  case 129:
   if (pi->ipi_csum_flags & IXL_CSUM_TCP) {
    *cmd |= I40E_TX_DESC_CMD_L4T_EOFT_TCP;
    *off |= (pi->ipi_tcp_hlen >> 2) <<
        I40E_TX_DESC_LENGTH_L4_FC_LEN_SHIFT;

    MPASS(pi->ipi_tcp_hlen != 0);
   }
   break;
  case 128:
   if (pi->ipi_csum_flags & IXL_CSUM_UDP) {
    *cmd |= I40E_TX_DESC_CMD_L4T_EOFT_UDP;
    *off |= (sizeof(struct udphdr) >> 2) <<
        I40E_TX_DESC_LENGTH_L4_FC_LEN_SHIFT;
   }
   break;
  case 130:
   if (pi->ipi_csum_flags & IXL_CSUM_SCTP) {
    *cmd |= I40E_TX_DESC_CMD_L4T_EOFT_SCTP;
    *off |= (sizeof(struct sctphdr) >> 2) <<
        I40E_TX_DESC_LENGTH_L4_FC_LEN_SHIFT;
   }

  default:
   break;
 }
}
