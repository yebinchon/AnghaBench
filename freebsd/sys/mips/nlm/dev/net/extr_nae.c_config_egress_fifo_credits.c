
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct nae_port_config {int max_stg2_offset; int stg1_2_credit; int max_eh_offset; int stg2_eh_credit; int max_frout_offset; int stg2_frout_credit; int max_ms_offset; int stg2_ms_credit; } ;


 int NAE_EH_FREECRDT_CMD ;
 int NAE_STG1_STG2CRDT_CMD ;
 int NAE_STG2_EHCRDT_CMD ;
 int NAE_STG2_STRCRDT_CMD ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
config_egress_fifo_credits(uint64_t nae_base, int hwport, int start_ctxt,
    int num_ctxts, int max_ctxts, struct nae_port_config *cfg)
{
 uint32_t data, credit, max_credit;
 int i, limit;

 limit = start_ctxt + num_ctxts;

 max_credit = cfg[hwport].max_stg2_offset + 1;
 for (i = start_ctxt; i < limit; i++) {
  credit = cfg[hwport].stg1_2_credit / max_ctxts;
  if (credit > max_credit)
      credit = max_credit;
  data = credit << 16 |
      i << 4 |
      1;
  nlm_write_nae_reg(nae_base, NAE_STG1_STG2CRDT_CMD, data);
 }


 max_credit = cfg[hwport].max_eh_offset + 1;
 for (i = start_ctxt; i < limit; i++) {
  credit = cfg[hwport].stg2_eh_credit / max_ctxts;
  if (credit > max_credit)
   credit = max_credit;
  data = credit << 16 |
      i << 4 |
      1;
  nlm_write_nae_reg(nae_base, NAE_STG2_EHCRDT_CMD, data);
 }


 max_credit = cfg[hwport].max_frout_offset + 1;
 for (i = start_ctxt; i < limit; i++) {
  credit = cfg[hwport].stg2_frout_credit / max_ctxts;
  if (credit > max_credit)
   credit = max_credit;
  data = credit << 16 |
      i << 4 |
      1;
  nlm_write_nae_reg(nae_base, NAE_EH_FREECRDT_CMD, data);
 }


 max_credit = cfg[hwport].max_ms_offset + 1;
 for (i = start_ctxt; i < limit; i++) {
  credit = cfg[hwport].stg2_ms_credit / max_ctxts;
  if (credit > max_credit)
   credit = max_credit;
  data = credit << 16 |
      i << 4 |
      1;
  nlm_write_nae_reg(nae_base, NAE_STG2_STRCRDT_CMD, data);
 }
}
