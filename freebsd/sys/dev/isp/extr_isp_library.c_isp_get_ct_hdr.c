
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ispsoftc_t ;
struct TYPE_4__ {int ct_vunique; int ct_explanation; int ct_reason; int ct_reserved1; int ct_bcnt_resid; int ct_cmd_resp; int ct_reserved0; int ct_options; int ct_fcs_subtype; int ct_fcs_type; int * ct_in_id; int ct_revision; } ;
typedef TYPE_1__ ct_hdr_t ;


 int ISP_IOZGET_16 (int *,int *,int ) ;
 int ISP_IOZGET_8 (int *,int *,int ) ;

void
isp_get_ct_hdr(ispsoftc_t *isp, ct_hdr_t *src, ct_hdr_t *dst)
{
 ISP_IOZGET_8(isp, &src->ct_revision, dst->ct_revision);
 ISP_IOZGET_8(isp, &src->ct_in_id[0], dst->ct_in_id[0]);
 ISP_IOZGET_8(isp, &src->ct_in_id[1], dst->ct_in_id[1]);
 ISP_IOZGET_8(isp, &src->ct_in_id[2], dst->ct_in_id[2]);
 ISP_IOZGET_8(isp, &src->ct_fcs_type, dst->ct_fcs_type);
 ISP_IOZGET_8(isp, &src->ct_fcs_subtype, dst->ct_fcs_subtype);
 ISP_IOZGET_8(isp, &src->ct_options, dst->ct_options);
 ISP_IOZGET_8(isp, &src->ct_reserved0, dst->ct_reserved0);
 ISP_IOZGET_16(isp, &src->ct_cmd_resp, dst->ct_cmd_resp);
 ISP_IOZGET_16(isp, &src->ct_bcnt_resid, dst->ct_bcnt_resid);
 ISP_IOZGET_8(isp, &src->ct_reserved1, dst->ct_reserved1);
 ISP_IOZGET_8(isp, &src->ct_reason, dst->ct_reason);
 ISP_IOZGET_8(isp, &src->ct_explanation, dst->ct_explanation);
 ISP_IOZGET_8(isp, &src->ct_vunique, dst->ct_vunique);
}
