
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int SGMII_MAC_FILTER_CONFIG (int,int) ;
 int SGMII_NETIOR_VLANTYPE_FILTER (int,int) ;
 int nlm_read_nae_reg (int ,int ) ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
nlm_nae_setup_rx_mode_sgmii(uint64_t base, int nblock, int iface, int port_type,
    int broadcast_en, int multicast_en, int pause_en, int promisc_en)
{
 uint32_t val;
 if (promisc_en == 1) {
  val = nlm_read_nae_reg(base,
      SGMII_NETIOR_VLANTYPE_FILTER(nblock, iface));
  val &= (~(0x3 << 16));
  nlm_write_nae_reg(base,
      SGMII_NETIOR_VLANTYPE_FILTER(nblock, iface), val);
 } else {
  val = nlm_read_nae_reg(base,
      SGMII_NETIOR_VLANTYPE_FILTER(nblock, iface));
  val |= (0x1 << 17);
  nlm_write_nae_reg(base,
      SGMII_NETIOR_VLANTYPE_FILTER(nblock, iface), val);
 }

 val = ((broadcast_en & 0x1) << 10) |
     ((pause_en & 0x1) << 9) |
     ((multicast_en & 0x1) << 8) |
     ((promisc_en & 0x1) << 7) |
     1;

 nlm_write_nae_reg(base, SGMII_MAC_FILTER_CONFIG(nblock, iface), val);

}
