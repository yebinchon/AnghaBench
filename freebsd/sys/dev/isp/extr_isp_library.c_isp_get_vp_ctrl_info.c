
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vp_ctrl_fcf_index; int * vp_ctrl_reserved; int * vp_ctrl_idmap; int vp_ctrl_vp_count; int vp_ctrl_command; int vp_ctrl_status; int vp_ctrl_index_fail; int vp_ctrl_handle; int vp_ctrl_hdr; } ;
typedef TYPE_1__ vp_ctrl_info_t ;
typedef int ispsoftc_t ;


 int ASIZE (int *) ;
 int ISP_IOXGET_16 (int *,int *,int ) ;
 int ISP_IOXGET_32 (int *,int *,int ) ;
 int isp_get_hdr (int *,int *,int *) ;

void
isp_get_vp_ctrl_info(ispsoftc_t *isp, vp_ctrl_info_t *src, vp_ctrl_info_t *dst)
{
 int i;
 isp_get_hdr(isp, &src->vp_ctrl_hdr, &dst->vp_ctrl_hdr);
 ISP_IOXGET_32(isp, &src->vp_ctrl_handle, dst->vp_ctrl_handle);
 ISP_IOXGET_16(isp, &src->vp_ctrl_index_fail, dst->vp_ctrl_index_fail);
 ISP_IOXGET_16(isp, &src->vp_ctrl_status, dst->vp_ctrl_status);
 ISP_IOXGET_16(isp, &src->vp_ctrl_command, dst->vp_ctrl_command);
 ISP_IOXGET_16(isp, &src->vp_ctrl_vp_count, dst->vp_ctrl_vp_count);
 for (i = 0; i < ASIZE(src->vp_ctrl_idmap); i++) {
  ISP_IOXGET_16(isp, &src->vp_ctrl_idmap[i], dst->vp_ctrl_idmap[i]);
 }
 for (i = 0; i < ASIZE(src->vp_ctrl_reserved); i++) {
  ISP_IOXGET_16(isp, &src->vp_ctrl_reserved[i], dst->vp_ctrl_reserved[i]);
 }
 ISP_IOXGET_16(isp, &src->vp_ctrl_fcf_index, dst->vp_ctrl_fcf_index);
}
