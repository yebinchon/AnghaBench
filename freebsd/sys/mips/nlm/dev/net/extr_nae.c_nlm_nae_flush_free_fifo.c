
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int NAE_RX_FREE_FIFO_POP ;
 int nlm_read_nae_reg (int ,int ) ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
nlm_nae_flush_free_fifo(uint64_t nae_base, int nblocks)
{
 uint32_t data, fifo_mask;

 fifo_mask = (1 << (4 * nblocks)) - 1;

 nlm_write_nae_reg(nae_base, NAE_RX_FREE_FIFO_POP, fifo_mask);
 do {
  data = nlm_read_nae_reg(nae_base, NAE_RX_FREE_FIFO_POP);
 } while (data != fifo_mask);

 nlm_write_nae_reg(nae_base, NAE_RX_FREE_FIFO_POP, 0);
}
