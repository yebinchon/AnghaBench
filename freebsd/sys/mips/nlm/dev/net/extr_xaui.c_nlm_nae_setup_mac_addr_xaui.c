
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int XAUIC ;
 int XAUI_MAC_ADDR0_HI (int) ;
 int XAUI_MAC_ADDR0_LO (int) ;
 int XAUI_MAC_ADDR_MASK0_HI (int) ;
 int XAUI_MAC_ADDR_MASK0_LO (int) ;
 int nlm_nae_setup_rx_mode_xaui (int ,int,int,int ,int,int,int ,int ) ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
nlm_nae_setup_mac_addr_xaui(uint64_t base, int nblock, int iface,
    int port_type, unsigned char *mac_addr)
{
 nlm_write_nae_reg(base,
     XAUI_MAC_ADDR0_LO(nblock),
     (mac_addr[5] << 24) |
     (mac_addr[4] << 16) |
     (mac_addr[3] << 8) |
     mac_addr[2]);

 nlm_write_nae_reg(base,
     XAUI_MAC_ADDR0_HI(nblock),
     (mac_addr[1] << 24) |
     (mac_addr[0] << 16));

 nlm_write_nae_reg(base,
     XAUI_MAC_ADDR_MASK0_LO(nblock),
     0xffffffff);
 nlm_write_nae_reg(base,
     XAUI_MAC_ADDR_MASK0_HI(nblock),
     0xffffffff);

 nlm_nae_setup_rx_mode_xaui(base, nblock, iface,
     XAUIC,
     1,
     1,
     0,
     0
     );
}
