
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct nae_port_config {scalar_t__ num_channels; } ;


 int NAE_REG (int,int ,int) ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
nlm_setup_rx_base_config(uint64_t nae_base, int maxports,
    struct nae_port_config *cfg)
{
 int base = 0;
 uint32_t val;
 int i;
 int id;

 for (i = 0; i < (maxports/2); i++) {
  id = 0x12 + i;

  val = (base & 0x3ff);
  base += cfg[(i * 2)].num_channels;

  val |= ((base & 0x3ff) << 16);
  base += cfg[(i * 2) + 1].num_channels;

  nlm_write_nae_reg(nae_base, NAE_REG(7, 0, id), val);
 }
}
