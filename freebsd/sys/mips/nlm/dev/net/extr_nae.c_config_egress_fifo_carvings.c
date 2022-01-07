
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct nae_port_config {int stg2_fifo_size; int max_stg2_offset; int eh_fifo_size; int max_eh_offset; int frout_fifo_size; int max_frout_offset; int ms_fifo_size; int max_ms_offset; int pkt_fifo_size; int max_pmem_offset; int pktlen_fifo_size; } ;


 int NAE_EH_PMEM_PROG ;
 int NAE_FREE_PMEM_PROG ;
 int NAE_STG2_PMEM_PROG ;
 int NAE_STR_PMEM_CMD ;
 int NAE_TX_PKTLEN_PMEM_CMD ;
 int NAE_TX_PKT_PMEM_CMD0 ;
 int NAE_TX_PKT_PMEM_CMD1 ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
config_egress_fifo_carvings(uint64_t nae_base, int hwport, int start_ctxt,
    int num_ctxts, int max_ctxts, struct nae_port_config *cfg)
{
 static uint32_t cur_start[6] = {0, 0, 0, 0, 0, 0};
 uint32_t data = 0;
 uint32_t start = 0, size, offset;
 int i, limit;

 limit = start_ctxt + num_ctxts;

 start = cur_start[0];
 for (i = start_ctxt; i < limit; i++) {
  size = cfg[hwport].stg2_fifo_size / max_ctxts;
  if (size)
   offset = size - 1;
  else
   offset = size;
  if (offset > cfg[hwport].max_stg2_offset)
   offset = cfg[hwport].max_stg2_offset;
  data = offset << 23 |
      start << 11 |
      i << 1 |
      1;
  nlm_write_nae_reg(nae_base, NAE_STG2_PMEM_PROG, data);
  start += size;
 }
 cur_start[0] = start;


 start = cur_start[1];
 for (i = start_ctxt; i < limit; i++) {
  size = cfg[hwport].eh_fifo_size / max_ctxts;
  if (size)
   offset = size - 1;
  else
   offset = size ;
  if (offset > cfg[hwport].max_eh_offset)
      offset = cfg[hwport].max_eh_offset;
  data = offset << 23 |
      start << 11 |
      i << 1 |
      1;
  nlm_write_nae_reg(nae_base, NAE_EH_PMEM_PROG, data);
  start += size;
 }
 cur_start[1] = start;


 start = cur_start[2];
 for (i = start_ctxt; i < limit; i++) {
  size = cfg[hwport].frout_fifo_size / max_ctxts;
  if (size)
   offset = size - 1;
  else
   offset = size ;
  if (offset > cfg[hwport].max_frout_offset)
   offset = cfg[hwport].max_frout_offset;
  data = offset << 23 |
      start << 11 |
      i << 1 |
      1;
  nlm_write_nae_reg(nae_base, NAE_FREE_PMEM_PROG, data);
  start += size;
 }
 cur_start[2] = start;


 start = cur_start[3];
 for (i = start_ctxt; i < limit; i++) {
  size = cfg[hwport].ms_fifo_size / max_ctxts;
  if (size)
   offset = size - 1;
  else
   offset = size ;
  if (offset > cfg[hwport].max_ms_offset)
   offset = cfg[hwport].max_ms_offset;
  data = offset << 22 |
      start << 11 |
      i << 1 |
      1;
  nlm_write_nae_reg(nae_base, NAE_STR_PMEM_CMD, data);
  start += size;
 }
 cur_start[3] = start;


 start = cur_start[4];
 for (i = start_ctxt; i < limit; i++) {
  size = cfg[hwport].pkt_fifo_size / max_ctxts;
  if (size)
   offset = size - 1;
  else
   offset = size ;
  if (offset > cfg[hwport].max_pmem_offset)
   offset = cfg[hwport].max_pmem_offset;
  nlm_write_nae_reg(nae_base, NAE_TX_PKT_PMEM_CMD1, offset);

  data = start << 11 |
      i << 1 |
      1;
  nlm_write_nae_reg(nae_base, NAE_TX_PKT_PMEM_CMD0, data);
  start += size;
 }
 cur_start[4] = start;


 start = cur_start[5];
 for (i = start_ctxt; i < limit; i++) {
  size = cfg[hwport].pktlen_fifo_size / max_ctxts;
  if (size)
   offset = size - 1;
  else
   offset = size ;
  data = offset << 22 |
      start << 11 |
      i << 1 |
      1;
  nlm_write_nae_reg(nae_base, NAE_TX_PKTLEN_PMEM_CMD, data);
  start += size;
 }
 cur_start[5] = start;
}
