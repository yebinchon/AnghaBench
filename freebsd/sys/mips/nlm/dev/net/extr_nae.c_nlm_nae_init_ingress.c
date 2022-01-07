
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int NAE_PARSER_CONFIG ;
 int NAE_RX_CONFIG ;
 int nlm_read_nae_reg (int ,int ) ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
nlm_nae_init_ingress(uint64_t nae_base, uint32_t desc_size)
{
 uint32_t rx_cfg;
 uint32_t parser_threshold = 384;

 rx_cfg = nlm_read_nae_reg(nae_base, NAE_RX_CONFIG);
 rx_cfg &= ~(0x3 << 1);
 rx_cfg &= ~(0xff << 4);
 rx_cfg &= ~(0x3f << 24);

 rx_cfg |= 1;
 rx_cfg |= (0x0 << 1);
 rx_cfg |= (0x43 & 0x7f) << 24;
 rx_cfg |= ((desc_size / 64) & 0xff) << 4;
 nlm_write_nae_reg(nae_base, NAE_RX_CONFIG, rx_cfg);
 nlm_write_nae_reg(nae_base, NAE_PARSER_CONFIG,
     (parser_threshold & 0x3ff) |
     (((parser_threshold / desc_size) + 1) & 0xff) << 12 |
     (((parser_threshold / 64) % desc_size) & 0xff) << 20);


}
