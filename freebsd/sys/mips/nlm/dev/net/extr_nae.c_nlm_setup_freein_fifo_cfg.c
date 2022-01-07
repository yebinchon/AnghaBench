
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct nae_port_config {int num_free_descs; } ;


 int MAX_FREE_FIFO_POOL_3XX ;
 int MAX_FREE_FIFO_POOL_8XX ;
 int NAE_FREE_IN_FIFO_CFG ;
 scalar_t__ nlm_is_xlp8xx () ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
nlm_setup_freein_fifo_cfg(uint64_t nae_base, struct nae_port_config *cfg)
{
 int size, i;
 uint32_t reg;
 int start = 0, maxbufpool;

 if (nlm_is_xlp8xx())
  maxbufpool = MAX_FREE_FIFO_POOL_8XX;
 else
  maxbufpool = MAX_FREE_FIFO_POOL_3XX;
 for (i = 0; i < maxbufpool; i++) {

  size = (cfg[i].num_free_descs / 2);
  if (size == 0)
   size = 8;
  reg = ((size & 0x3ff ) << 20) |
      ((start & 0x1ff) << 8) |
      (i & 0x1f);

  nlm_write_nae_reg(nae_base, NAE_FREE_IN_FIFO_CFG, reg);
  start += size;
 }
}
