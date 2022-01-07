
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct tx_ring {TYPE_2__* que; int mss_too_small; int * tx_base; } ;
struct i40e_tx_context_desc {int tunneling_params; int type_cmd_tso_mss; } ;
typedef TYPE_3__* if_softc_ctx_t ;
typedef TYPE_4__* if_pkt_info_t ;
struct TYPE_9__ {int ipi_pidx; int ipi_ehdrlen; int ipi_ip_hlen; int ipi_tcp_hlen; scalar_t__ ipi_len; scalar_t__ ipi_tso_segsz; } ;
struct TYPE_8__ {int* isc_ntxd; } ;
struct TYPE_7__ {int tso; TYPE_1__* vsi; } ;
struct TYPE_6__ {TYPE_3__* shared; } ;


 int I40E_TXD_CTX_QW1_CMD_SHIFT ;
 int I40E_TXD_CTX_QW1_DTYPE_SHIFT ;
 int I40E_TXD_CTX_QW1_MSS_SHIFT ;
 int I40E_TXD_CTX_QW1_TSO_LEN_SHIFT ;
 scalar_t__ I40E_TX_CTX_DESC_TSO ;
 scalar_t__ I40E_TX_DESC_DTYPE_CONTEXT ;
 scalar_t__ IXL_MAX_FRAME ;
 scalar_t__ IXL_MAX_TSO_MSS ;
 scalar_t__ IXL_MIN_TSO_MSS ;
 int MPASS (int) ;
 int htole32 (int ) ;
 int htole64 (int) ;

__attribute__((used)) static int
ixl_tso_setup(struct tx_ring *txr, if_pkt_info_t pi)
{
 if_softc_ctx_t scctx;
 struct i40e_tx_context_desc *TXD;
 u32 cmd, mss, type, tsolen;
 int idx, total_hdr_len;
 u64 type_cmd_tso_mss;

 idx = pi->ipi_pidx;
 TXD = (struct i40e_tx_context_desc *) &txr->tx_base[idx];
 total_hdr_len = pi->ipi_ehdrlen + pi->ipi_ip_hlen + pi->ipi_tcp_hlen;
 tsolen = pi->ipi_len - total_hdr_len;
 scctx = txr->que->vsi->shared;

 type = I40E_TX_DESC_DTYPE_CONTEXT;
 cmd = I40E_TX_CTX_DESC_TSO;




 if (pi->ipi_tso_segsz < IXL_MIN_TSO_MSS) {
  txr->mss_too_small++;
  pi->ipi_tso_segsz = IXL_MIN_TSO_MSS;
 }
 mss = pi->ipi_tso_segsz;


 MPASS(mss <= IXL_MAX_TSO_MSS);

 MPASS(pi->ipi_ehdrlen != 0);
 MPASS(pi->ipi_ip_hlen != 0);

 MPASS(tsolen != 0);

 MPASS(total_hdr_len + mss <= IXL_MAX_FRAME);

 type_cmd_tso_mss = ((u64)type << I40E_TXD_CTX_QW1_DTYPE_SHIFT) |
     ((u64)cmd << I40E_TXD_CTX_QW1_CMD_SHIFT) |
     ((u64)tsolen << I40E_TXD_CTX_QW1_TSO_LEN_SHIFT) |
     ((u64)mss << I40E_TXD_CTX_QW1_MSS_SHIFT);
 TXD->type_cmd_tso_mss = htole64(type_cmd_tso_mss);

 TXD->tunneling_params = htole32(0);
 txr->que->tso++;

 return ((idx + 1) & (scctx->isc_ntxd[0]-1));
}
