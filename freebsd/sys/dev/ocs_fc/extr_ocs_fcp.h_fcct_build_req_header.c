
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {int revision; scalar_t__ vendor_specific; scalar_t__ reason_code_explanation; scalar_t__ reason_code; scalar_t__ fragment_id; void* max_residual_size; void* cmd_rsp_code; scalar_t__ resv1; scalar_t__ options; int gs_subtype; int gs_type; scalar_t__ in_id; } ;
typedef TYPE_1__ fcct_iu_header_t ;


 int FC_GS_SUBTYPE_NAME_SERVER ;
 int FC_GS_TYPE_DIRECTORY_SERVICE ;
 void* ocs_htobe16 (int) ;

__attribute__((used)) static inline void fcct_build_req_header(fcct_iu_header_t *hdr, uint16_t cmd, uint16_t max_size)
{

 hdr->revision = 1;
 hdr->in_id = 0;
 hdr->gs_type = FC_GS_TYPE_DIRECTORY_SERVICE;
 hdr->gs_subtype = FC_GS_SUBTYPE_NAME_SERVER;
 hdr->options = 0;
 hdr->resv1 = 0;
 hdr->cmd_rsp_code = ocs_htobe16(cmd);
 hdr->max_residual_size = ocs_htobe16(max_size/(sizeof(uint32_t)));
 hdr->fragment_id = 0;
 hdr->reason_code = 0;
 hdr->reason_code_explanation = 0;
 hdr->vendor_specific = 0;
}
