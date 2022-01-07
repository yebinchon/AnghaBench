
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int sli4_sge_t ;
struct TYPE_11__ {int segment_length; scalar_t__ last; int sge_type; int buffer_address_low; int buffer_address_high; } ;
typedef TYPE_2__ sli4_lsp_sge_t ;
struct TYPE_12__ {int sli; } ;
typedef TYPE_3__ ocs_hw_t ;
typedef int ocs_hw_rtn_e ;
struct TYPE_13__ {int def_sgl_count; int n_sge; int ovfl_sgl_count; int sgl_count; TYPE_1__* ovfl_sgl; TYPE_1__* sgl; TYPE_2__* ovfl_lsp; TYPE_8__* ovfl_io; } ;
typedef TYPE_4__ ocs_hw_io_t ;
struct TYPE_10__ {int phys; scalar_t__ virt; } ;
struct TYPE_14__ {int indicator; int def_sgl_count; TYPE_1__ def_sgl; } ;


 int OCS_HW_RTN_ERROR ;
 int OCS_HW_RTN_SUCCESS ;
 scalar_t__ SLI4_IF_TYPE_BE3_SKH_PF ;
 scalar_t__ SLI4_IF_TYPE_BE3_SKH_VF ;
 int SLI4_SGE_TYPE_LSP ;
 int ocs_addr32_hi (int ) ;
 int ocs_addr32_lo (int ) ;
 TYPE_8__* ocs_hw_io_alloc (TYPE_3__*) ;
 int ocs_memset (TYPE_2__*,int ,int) ;
 scalar_t__ sli_get_if_type (int *) ;
 scalar_t__ sli_get_sgl_preregister (int *) ;
 int sli_skh_chain_sge_build (int *,int *,int ,int ,int ) ;

__attribute__((used)) static ocs_hw_rtn_e
ocs_hw_io_overflow_sgl(ocs_hw_t *hw, ocs_hw_io_t *io)
{
 sli4_lsp_sge_t *lsp;


 if (io->sgl == io->ovfl_sgl) {
  return OCS_HW_RTN_ERROR;
 }







 if (sli_get_sgl_preregister(&hw->sli) &&
     io->def_sgl_count > 4 &&
     io->ovfl_io == ((void*)0) &&
     ((SLI4_IF_TYPE_BE3_SKH_PF == sli_get_if_type(&hw->sli)) ||
  (SLI4_IF_TYPE_BE3_SKH_VF == sli_get_if_type(&hw->sli)))) {
  io->ovfl_io = ocs_hw_io_alloc(hw);
  if (io->ovfl_io != ((void*)0)) {





   io->ovfl_sgl = &io->ovfl_io->def_sgl;
   io->ovfl_sgl_count = io->ovfl_io->def_sgl_count;
  }
 }


 if (io->ovfl_io == ((void*)0) || io->ovfl_sgl == ((void*)0)) {
  return OCS_HW_RTN_ERROR;
 }






 ((sli4_sge_t*)io->ovfl_sgl->virt)[0] = ((sli4_sge_t*)io->sgl->virt)[io->n_sge - 1];

 lsp = &((sli4_lsp_sge_t*)io->sgl->virt)[io->n_sge - 1];
 ocs_memset(lsp, 0, sizeof(*lsp));

 if ((SLI4_IF_TYPE_BE3_SKH_PF == sli_get_if_type(&hw->sli)) ||
     (SLI4_IF_TYPE_BE3_SKH_VF == sli_get_if_type(&hw->sli))) {
  sli_skh_chain_sge_build(&hw->sli,
     (sli4_sge_t*)lsp,
     io->ovfl_io->indicator,
     0,
     0);
 } else {
  lsp->buffer_address_high = ocs_addr32_hi(io->ovfl_sgl->phys);
  lsp->buffer_address_low = ocs_addr32_lo(io->ovfl_sgl->phys);
  lsp->sge_type = SLI4_SGE_TYPE_LSP;
  lsp->last = 0;
  io->ovfl_lsp = lsp;
  io->ovfl_lsp->segment_length = sizeof(sli4_sge_t);
 }


 io->sgl = io->ovfl_sgl;
 io->sgl_count = io->ovfl_sgl_count;
 io->n_sge = 1;

 return OCS_HW_RTN_SUCCESS;
}
