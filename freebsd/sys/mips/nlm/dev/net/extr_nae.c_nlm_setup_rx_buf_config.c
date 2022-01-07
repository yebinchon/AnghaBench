
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct nae_port_config {scalar_t__ type; int num_channels; int rxbuf_size; } ;


 int NAE_RXBUF_BASE_DPTH ;
 int NAE_RXBUF_BASE_DPTH_ADDR ;
 scalar_t__ UNKNOWN ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
nlm_setup_rx_buf_config(uint64_t nae_base, int maxports,
    struct nae_port_config *cfg)
{
 uint32_t val;
 int i, sz, k;
 int context = 0;
 int base = 0;

 for (i = 0; i < maxports; i++) {
  if (cfg[i].type == UNKNOWN)
   continue;
  for (k = 0; k < cfg[i].num_channels; k++) {

   nlm_write_nae_reg(nae_base, NAE_RXBUF_BASE_DPTH_ADDR,
       (context+k));


   sz = cfg[i].rxbuf_size;
   val = 0x80000000 | ((base << 2) & 0x3fff);
   val |= (((sz << 2) & 0x3fff) << 16);

   nlm_write_nae_reg(nae_base, NAE_RXBUF_BASE_DPTH, val);
   nlm_write_nae_reg(nae_base, NAE_RXBUF_BASE_DPTH,
       (0x7fffffff & val));
   base += sz;
  }
  context += cfg[i].num_channels;
 }
}
