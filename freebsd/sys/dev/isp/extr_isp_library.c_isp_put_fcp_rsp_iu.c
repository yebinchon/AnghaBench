
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ispsoftc_t ;
struct TYPE_4__ {int fcp_rsp_rsplen; int fcp_rsp_snslen; int fcp_rsp_resid; int fcp_rsp_scsi_status; int fcp_rsp_bits; int fcp_rsp_status_qualifier; int * fcp_rsp_reserved; } ;
typedef TYPE_1__ fcp_rsp_iu_t ;


 int ISP_IOZPUT_16 (int *,int ,int *) ;
 int ISP_IOZPUT_32 (int *,int ,int *) ;
 int ISP_IOZPUT_8 (int *,int ,int *) ;

void
isp_put_fcp_rsp_iu(ispsoftc_t *isp, fcp_rsp_iu_t *src, fcp_rsp_iu_t *dst)
{
 int i;
 for (i = 0; i < ((sizeof (src->fcp_rsp_reserved))/(sizeof (src->fcp_rsp_reserved[0]))); i++) {
  ISP_IOZPUT_8(isp, src->fcp_rsp_reserved[i], &dst->fcp_rsp_reserved[i]);
 }
 ISP_IOZPUT_16(isp, src->fcp_rsp_status_qualifier, &dst->fcp_rsp_status_qualifier);
 ISP_IOZPUT_8(isp, src->fcp_rsp_bits, &dst->fcp_rsp_bits);
 ISP_IOZPUT_8(isp, src->fcp_rsp_scsi_status, &dst->fcp_rsp_scsi_status);
 ISP_IOZPUT_32(isp, src->fcp_rsp_resid, &dst->fcp_rsp_resid);
 ISP_IOZPUT_32(isp, src->fcp_rsp_snslen, &dst->fcp_rsp_snslen);
 ISP_IOZPUT_32(isp, src->fcp_rsp_rsplen, &dst->fcp_rsp_rsplen);
}
