
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int NAE_CACHELINE_SIZE ;
 int NAE_FREEIN_FIFO_UNIQ_SZ_CFG ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
nlm_config_freein_fifo_uniq_cfg(uint64_t nae_base, int port,
    int nblock_free_desc)
{
 uint32_t val;
 int size_in_clines;

 size_in_clines = (nblock_free_desc / NAE_CACHELINE_SIZE);
 val = (size_in_clines << 8) | (port & 0x1f);
 nlm_write_nae_reg(nae_base, NAE_FREEIN_FIFO_UNIQ_SZ_CFG, val);
}
