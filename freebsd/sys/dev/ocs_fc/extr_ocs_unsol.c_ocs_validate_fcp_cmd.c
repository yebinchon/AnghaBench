
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ocs_t ;
struct TYPE_13__ {TYPE_4__* payload; TYPE_2__* header; } ;
typedef TYPE_5__ ocs_hw_sequence_t ;
typedef int int32_t ;
struct TYPE_14__ {int additional_fcp_cdb_length; } ;
typedef TYPE_6__ fcp_cmnd_iu_t ;
struct TYPE_15__ {int ox_id; } ;
typedef TYPE_7__ fc_header_t ;
struct TYPE_11__ {size_t len; TYPE_6__* virt; } ;
struct TYPE_12__ {TYPE_3__ dma; } ;
struct TYPE_9__ {TYPE_7__* virt; } ;
struct TYPE_10__ {TYPE_1__ dma; } ;


 int ocs_be16toh (int ) ;
 int ocs_log_debug (int *,char*,int ,size_t,size_t) ;

__attribute__((used)) static int32_t
ocs_validate_fcp_cmd(ocs_t *ocs, ocs_hw_sequence_t *seq)
{
 size_t exp_payload_len = 0;
 fcp_cmnd_iu_t *cmnd = seq->payload->dma.virt;
 exp_payload_len = sizeof(fcp_cmnd_iu_t) - 16 + cmnd->additional_fcp_cdb_length;






 if (seq->payload->dma.len < exp_payload_len) {
  fc_header_t *fchdr = seq->header->dma.virt;
  ocs_log_debug(ocs, "dropping ox_id %04x with payload length (%zd) less than expected (%zd)\n",
         ocs_be16toh(fchdr->ox_id), seq->payload->dma.len,
         exp_payload_len);
  return -1;
 }
 return 0;

}
