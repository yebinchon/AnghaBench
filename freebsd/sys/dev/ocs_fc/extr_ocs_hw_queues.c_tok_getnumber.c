
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {int type; int string; } ;
typedef TYPE_2__ tok_t ;
struct TYPE_8__ {int n_wq; } ;
struct TYPE_10__ {scalar_t__ ulp_start; scalar_t__ ulp_max; TYPE_1__ config; } ;
typedef TYPE_3__ ocs_hw_t ;
struct TYPE_11__ {int rptcount_idx; int * rptcount; } ;
typedef TYPE_4__ ocs_hw_qtop_t ;


 int MIN (int ,int ) ;
 int OCS_HW_MAX_MRQS ;


 int ocs_get_num_cpus () ;
 int ocs_strcmp (int ,char*) ;
 int ocs_strtoul (int ,int ,int ) ;

__attribute__((used)) static uint32_t
tok_getnumber(ocs_hw_t *hw, ocs_hw_qtop_t *qtop, tok_t *tok)
{
 uint32_t rval = 0;
 uint32_t num_cpus = ocs_get_num_cpus();

 switch(tok->type) {
 case 128:
  if (ocs_strcmp(tok->string, "$ncpu") == 0) {
   rval = num_cpus;
  } else if (ocs_strcmp(tok->string, "$ncpu1") == 0) {
   rval = num_cpus - 1;
  } else if (ocs_strcmp(tok->string, "$nwq") == 0) {
   if (hw != ((void*)0)) {
    rval = hw->config.n_wq;
   }
  } else if (ocs_strcmp(tok->string, "$maxmrq") == 0) {
   rval = MIN(num_cpus, OCS_HW_MAX_MRQS);
  } else if (ocs_strcmp(tok->string, "$nulp") == 0) {
   rval = hw->ulp_max - hw->ulp_start + 1;
  } else if ((qtop->rptcount_idx > 0) && ocs_strcmp(tok->string, "$rpt0") == 0) {
   rval = qtop->rptcount[qtop->rptcount_idx-1];
  } else if ((qtop->rptcount_idx > 1) && ocs_strcmp(tok->string, "$rpt1") == 0) {
   rval = qtop->rptcount[qtop->rptcount_idx-2];
  } else if ((qtop->rptcount_idx > 2) && ocs_strcmp(tok->string, "$rpt2") == 0) {
   rval = qtop->rptcount[qtop->rptcount_idx-3];
  } else if ((qtop->rptcount_idx > 3) && ocs_strcmp(tok->string, "$rpt3") == 0) {
   rval = qtop->rptcount[qtop->rptcount_idx-4];
  } else {
   rval = ocs_strtoul(tok->string, 0, 0);
  }
  break;
 case 129:
  rval = ocs_strtoul(tok->string, 0, 0);
  break;
 default:
  break;
 }
 return rval;
}
