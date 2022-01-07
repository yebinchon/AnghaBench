
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int port_id; int p_dev; } ;


 int DP_INFO (int ,char*,int) ;
 int XLMAC_CTRL ;
 int XLMAC_MODE ;
 int XLMAC_PAUSE_CTRL ;
 int XLMAC_PFC_CTRL ;
 int XLMAC_RX_MAX_SIZE ;
 int XLMAC_TX_CTRL ;
 int XLPORT_ENABLE_REG ;
 int XLPORT_FLOW_CONTROL_CONFIG ;
 int XLPORT_MAC_CONTROL ;
 int XLPORT_MODE_REG ;
 int ecore_wr_nw_port (struct ecore_hwfn*,struct ecore_ptt*,int ,int,int,int) ;

__attribute__((used)) static void ecore_emul_link_init_bb(struct ecore_hwfn *p_hwfn,
        struct ecore_ptt *p_ptt)
{
 u8 loopback = 0, port = p_hwfn->port_id * 2;

 DP_INFO(p_hwfn->p_dev, "Configurating Emulation Link %02x\n", port);

 ecore_wr_nw_port(p_hwfn, p_ptt, XLPORT_MODE_REG,
    (0x4 << 4) | 0x4, 1, port);
 ecore_wr_nw_port(p_hwfn, p_ptt, XLPORT_MAC_CONTROL, 0, 1, port);
 ecore_wr_nw_port(p_hwfn, p_ptt, XLMAC_CTRL,
    0x40, 0, port);
 ecore_wr_nw_port(p_hwfn, p_ptt, XLMAC_MODE,
    0x40, 0, port);
 ecore_wr_nw_port(p_hwfn, p_ptt, XLMAC_RX_MAX_SIZE,
    0x3fff, 0, port);
 ecore_wr_nw_port(p_hwfn, p_ptt, XLMAC_TX_CTRL,
    0x01000000800ULL | (0xa << 12) | ((u64)1 << 38),
    0, port);
 ecore_wr_nw_port(p_hwfn, p_ptt, XLMAC_PAUSE_CTRL,
    0x7c000, 0, port);
 ecore_wr_nw_port(p_hwfn, p_ptt, XLMAC_PFC_CTRL,
    0x30ffffc000ULL, 0, port);
 ecore_wr_nw_port(p_hwfn, p_ptt, XLMAC_CTRL, 0x3 | (loopback << 2),
    0, port);
 ecore_wr_nw_port(p_hwfn, p_ptt, XLMAC_CTRL, 0x1003 | (loopback << 2),
    0, port);
 ecore_wr_nw_port(p_hwfn, p_ptt, XLPORT_FLOW_CONTROL_CONFIG,
    1, 0, port);
 ecore_wr_nw_port(p_hwfn, p_ptt, XLPORT_ENABLE_REG,
    0xf, 1, port);
}
