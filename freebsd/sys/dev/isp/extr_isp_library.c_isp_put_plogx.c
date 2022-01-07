
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ispsoftc_t ;
struct TYPE_6__ {TYPE_1__* plogx_ioparm; int plogx_rspsz_porthi; int plogx_portlo; int plogx_vphdl; int plogx_flags; int plogx_nphdl; int plogx_status; int plogx_handle; int plogx_header; } ;
typedef TYPE_2__ isp_plogx_t ;
struct TYPE_5__ {int hi16; int lo16; } ;


 int ISP_IOXPUT_16 (int *,int ,int *) ;
 int ISP_IOXPUT_32 (int *,int ,int *) ;
 int isp_put_hdr (int *,int *,int *) ;

void
isp_put_plogx(ispsoftc_t *isp, isp_plogx_t *src, isp_plogx_t *dst)
{
 int i;
 isp_put_hdr(isp, &src->plogx_header, &dst->plogx_header);
 ISP_IOXPUT_32(isp, src->plogx_handle, &dst->plogx_handle);
 ISP_IOXPUT_16(isp, src->plogx_status, &dst->plogx_status);
 ISP_IOXPUT_16(isp, src->plogx_nphdl, &dst->plogx_nphdl);
 ISP_IOXPUT_16(isp, src->plogx_flags, &dst->plogx_flags);
 ISP_IOXPUT_16(isp, src->plogx_vphdl, &dst->plogx_vphdl);
 ISP_IOXPUT_16(isp, src->plogx_portlo, &dst->plogx_portlo);
 ISP_IOXPUT_16(isp, src->plogx_rspsz_porthi, &dst->plogx_rspsz_porthi);
 for (i = 0; i < 11; i++) {
  ISP_IOXPUT_16(isp, src->plogx_ioparm[i].lo16, &dst->plogx_ioparm[i].lo16);
  ISP_IOXPUT_16(isp, src->plogx_ioparm[i].hi16, &dst->plogx_ioparm[i].hi16);
 }
}
