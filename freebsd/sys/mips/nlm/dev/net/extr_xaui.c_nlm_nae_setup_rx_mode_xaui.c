
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int XAUI_MAC_FILTER_CFG (int) ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
nlm_nae_setup_rx_mode_xaui(uint64_t base, int nblock, int iface, int port_type,
    int broadcast_en, int multicast_en, int pause_en, int promisc_en)
{
 uint32_t val;

 val = ((broadcast_en & 0x1) << 10) |
     ((pause_en & 0x1) << 9) |
     ((multicast_en & 0x1) << 8) |
     ((promisc_en & 0x1) << 7) |
     1;

 nlm_write_nae_reg(base, XAUI_MAC_FILTER_CFG(nblock), val);
}
