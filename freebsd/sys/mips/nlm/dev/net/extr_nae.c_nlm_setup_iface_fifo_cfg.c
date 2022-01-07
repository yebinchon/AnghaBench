
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct nae_port_config {int iface_fifo_size; } ;


 int NAE_IFACE_FIFO_CFG ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
nlm_setup_iface_fifo_cfg(uint64_t nae_base, int maxports,
    struct nae_port_config *cfg)
{
 uint32_t reg;
 int fifo_xoff_thresh = 12;
 int i, size;
 int cur_iface_start = 0;

 for (i = 0; i < maxports; i++) {
  size = cfg[i].iface_fifo_size;
  reg = ((fifo_xoff_thresh << 25) |
      ((size & 0x1ff) << 16) |
      ((cur_iface_start & 0xff) << 8) |
      (i & 0x1f));
  nlm_write_nae_reg(nae_base, NAE_IFACE_FIFO_CFG, reg);
  cur_iface_start += size;
 }
}
