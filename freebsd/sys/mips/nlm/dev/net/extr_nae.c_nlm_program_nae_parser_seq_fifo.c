
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct nae_port_config {int pseq_fifo_size; } ;


 int NAE_PARSER_SEQ_FIFO_CFG ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
nlm_program_nae_parser_seq_fifo(uint64_t nae_base, int maxports,
    struct nae_port_config *cfg)
{
 uint32_t val;
 int start = 0, size, i;

 for (i = 0; i < maxports; i++) {
  size = cfg[i].pseq_fifo_size;
  val = (((size & 0x1fff) << 17) |
      ((start & 0xfff) << 5) |
      (i & 0x1f));
  nlm_write_nae_reg(nae_base, NAE_PARSER_SEQ_FIFO_CFG, val);
  start += size;
 }
}
