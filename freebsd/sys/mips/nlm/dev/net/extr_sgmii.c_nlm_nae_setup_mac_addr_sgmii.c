
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int SGMIIC ;
 int SGMII_MAC_ADDR0_HI (int,int) ;
 int SGMII_MAC_ADDR0_LO (int,int) ;
 int SGMII_MAC_ADDR_MASK0_HI (int,int) ;
 int SGMII_MAC_ADDR_MASK0_LO (int,int) ;
 int nlm_nae_setup_rx_mode_sgmii (int ,int,int,int ,int,int,int ,int ) ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
nlm_nae_setup_mac_addr_sgmii(uint64_t base, int nblock, int iface,
    int port_type, uint8_t *mac_addr)
{
 nlm_write_nae_reg(base,
     SGMII_MAC_ADDR0_LO(nblock, iface),
     (mac_addr[5] << 24) |
     (mac_addr[4] << 16) |
     (mac_addr[3] << 8) |
     mac_addr[2]);

 nlm_write_nae_reg(base,
     SGMII_MAC_ADDR0_HI(nblock, iface),
     (mac_addr[1] << 24) |
     (mac_addr[0] << 16));

 nlm_write_nae_reg(base,
     SGMII_MAC_ADDR_MASK0_LO(nblock, iface),
     0xffffffff);
 nlm_write_nae_reg(base,
     SGMII_MAC_ADDR_MASK0_HI(nblock, iface),
     0xffffffff);

 nlm_nae_setup_rx_mode_sgmii(base, nblock, iface,
     SGMIIC,
     1,
     1,
     0,
     0
     );
}
