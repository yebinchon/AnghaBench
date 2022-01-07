
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;


 int DELAY (int) ;
 int NAE_RX_CONFIG ;
 int SYS_RESET ;
 int XLP_PCI_CFGREG4 ;
 int nlm_get_nae_pcibase (int) ;
 int nlm_get_nae_regbase (int) ;
 int nlm_get_sys_regbase (int) ;
 scalar_t__ nlm_is_xlp3xx () ;
 scalar_t__ nlm_is_xlp8xx_ax () ;
 int nlm_read_nae_reg (int ,int ) ;
 int nlm_read_pci_reg (int ,int ) ;
 int nlm_write_pci_reg (int ,int ,int) ;
 int nlm_write_sys_reg (int ,int ,int) ;

void
nlm_reset_nae(int node)
{
 uint64_t sysbase;
 uint64_t nae_base;
 uint64_t nae_pcibase;
 uint32_t rx_config;
 uint32_t bar0;
 int reset_bit;

 sysbase = nlm_get_sys_regbase(node);
 nae_base = nlm_get_nae_regbase(node);
 nae_pcibase = nlm_get_nae_pcibase(node);

 bar0 = nlm_read_pci_reg(nae_pcibase, XLP_PCI_CFGREG4);


 if (nlm_is_xlp8xx_ax()) {
  uint8_t val;

  val = (bar0 >> 24) & 0xff;
  bar0 = (val << 24) | (val << 16) | (val << 8) | val;
 }


 if (nlm_is_xlp3xx())
  reset_bit = 6;
 else
  reset_bit = 9;


 nlm_write_sys_reg(sysbase, SYS_RESET, (1 << reset_bit));


 DELAY(1000000);
 nlm_write_sys_reg(sysbase, SYS_RESET, (0 << reset_bit));
 DELAY(1000000);

 rx_config = nlm_read_nae_reg(nae_base, NAE_RX_CONFIG);
 nlm_write_pci_reg(nae_pcibase, XLP_PCI_CFGREG4, bar0);
}
