
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_7__ {int seq_init; scalar_t__ cs_ctl; scalar_t__ transferred; int exp_xfer_len; int init_task_tag; } ;
typedef TYPE_1__ ocs_io_t ;
struct TYPE_8__ {int additional_fcp_cdb_length; int fcp_cdb_and_dl; } ;
typedef TYPE_2__ fcp_cmnd_iu_t ;
struct TYPE_9__ {scalar_t__ cs_ctl; int f_ctl; int ox_id; } ;
typedef TYPE_3__ fc_header_t ;


 int FC_FCTL_PRIORITY_ENABLE ;
 int fc_be24toh (int ) ;
 int ocs_be16toh (int ) ;
 int ocs_be32toh (int ) ;

__attribute__((used)) static void
ocs_populate_io_fcp_cmd(ocs_io_t *io, fcp_cmnd_iu_t *cmnd, fc_header_t *fchdr, uint8_t sit)
{
 uint32_t *fcp_dl;
 io->init_task_tag = ocs_be16toh(fchdr->ox_id);

 fcp_dl = (uint32_t*)(&(cmnd->fcp_cdb_and_dl));
 fcp_dl += cmnd->additional_fcp_cdb_length;
 io->exp_xfer_len = ocs_be32toh(*fcp_dl);
 io->transferred = 0;






 if (fc_be24toh(fchdr->f_ctl) & FC_FCTL_PRIORITY_ENABLE) {
  io->cs_ctl = fchdr->cs_ctl;
 } else {
  io->cs_ctl = 0;
 }
 io->seq_init = sit;
}
