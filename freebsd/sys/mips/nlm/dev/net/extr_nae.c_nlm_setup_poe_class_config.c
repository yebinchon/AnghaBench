
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int NAE_POE_CLASS_SETUP_CFG ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
nlm_setup_poe_class_config(uint64_t nae_base, int max_poe_classes,
    int num_contexts, int *poe_cl_tbl)
{
 uint32_t val;
 int i, max_poe_class_ctxt_tbl_sz;

 max_poe_class_ctxt_tbl_sz = num_contexts/max_poe_classes;
 for (i = 0; i < max_poe_class_ctxt_tbl_sz; i++) {
  val = (poe_cl_tbl[(i/max_poe_classes) & 0x7] << 8) | i;
  nlm_write_nae_reg(nae_base, NAE_POE_CLASS_SETUP_CFG, val);
 }
}
