
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int NAE_TX_CONFIG ;
 int nlm_is_xlp8xx_ax () ;
 int nlm_read_nae_reg (int ,int ) ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
nlm_nae_init_egress(uint64_t nae_base)
{
 uint32_t tx_cfg;

 tx_cfg = nlm_read_nae_reg(nae_base, NAE_TX_CONFIG);
 if (!nlm_is_xlp8xx_ax()) {
  nlm_write_nae_reg(nae_base, NAE_TX_CONFIG,
      tx_cfg |
      0x1 |
      0x2 |
      0x4 |
      (1 << 3));
 } else {
  nlm_write_nae_reg(nae_base, NAE_TX_CONFIG,
      tx_cfg |
      0x1 |
      0x2);
 }
}
