
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ispsoftc_t ;
struct TYPE_6__ {TYPE_1__* ms_dataseg; int ms_cmd_bcnt; int ms_rsp_bcnt; int ms_reserved2; int ms_rxid; int ms_r_ctl; int ms_type; int ms_tot_cnt; int ms_cmd_cnt; int ms_time; int ms_reserved1; int ms_flags; int ms_status; int ms_nphdl; int ms_handle; int ms_header; } ;
typedef TYPE_2__ isp_ms_t ;
struct TYPE_5__ {int ds_count; int ds_basehi; int ds_base; } ;


 int ISP_IOXPUT_16 (int *,int ,int *) ;
 int ISP_IOXPUT_32 (int *,int ,int *) ;
 int ISP_IOXPUT_8 (int *,int ,int *) ;
 int isp_put_hdr (int *,int *,int *) ;

void
isp_put_ms(ispsoftc_t *isp, isp_ms_t *src, isp_ms_t *dst)
{
 int i;

 isp_put_hdr(isp, &src->ms_header, &dst->ms_header);
 ISP_IOXPUT_32(isp, src->ms_handle, &dst->ms_handle);
 ISP_IOXPUT_16(isp, src->ms_nphdl, &dst->ms_nphdl);
 ISP_IOXPUT_16(isp, src->ms_status, &dst->ms_status);
 ISP_IOXPUT_16(isp, src->ms_flags, &dst->ms_flags);
 ISP_IOXPUT_16(isp, src->ms_reserved1, &dst->ms_reserved1);
 ISP_IOXPUT_16(isp, src->ms_time, &dst->ms_time);
 ISP_IOXPUT_16(isp, src->ms_cmd_cnt, &dst->ms_cmd_cnt);
 ISP_IOXPUT_16(isp, src->ms_tot_cnt, &dst->ms_tot_cnt);
 ISP_IOXPUT_8(isp, src->ms_type, &dst->ms_type);
 ISP_IOXPUT_8(isp, src->ms_r_ctl, &dst->ms_r_ctl);
 ISP_IOXPUT_16(isp, src->ms_rxid, &dst->ms_rxid);
 ISP_IOXPUT_16(isp, src->ms_reserved2, &dst->ms_reserved2);
 ISP_IOXPUT_32(isp, src->ms_rsp_bcnt, &dst->ms_rsp_bcnt);
 ISP_IOXPUT_32(isp, src->ms_cmd_bcnt, &dst->ms_cmd_bcnt);
 for (i = 0; i < 2; i++) {
  ISP_IOXPUT_32(isp, src->ms_dataseg[i].ds_base, &dst->ms_dataseg[i].ds_base);
  ISP_IOXPUT_32(isp, src->ms_dataseg[i].ds_basehi, &dst->ms_dataseg[i].ds_basehi);
  ISP_IOXPUT_32(isp, src->ms_dataseg[i].ds_count, &dst->ms_dataseg[i].ds_count);
 }
}
