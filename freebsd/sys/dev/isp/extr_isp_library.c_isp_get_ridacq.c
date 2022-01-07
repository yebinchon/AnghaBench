
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ispsoftc_t ;
struct TYPE_4__ {int * ridacq_reserved1; int * ridacq_map; int ridacq_format; int ridacq_vp_port_hi; int ridacq_vp_port_lo; int ridacq_vp_status; int ridacq_vp_index; int ridacq_vp_setup; int ridacq_vp_acquired; int ridacq_handle; int ridacq_hdr; } ;
typedef TYPE_1__ isp_ridacq_t ;


 int ISP_IOXGET_16 (int *,int *,int ) ;
 int ISP_IOXGET_32 (int *,int *,int ) ;
 int ISP_IOXGET_8 (int *,int *,int ) ;
 int isp_get_hdr (int *,int *,int *) ;

void
isp_get_ridacq(ispsoftc_t *isp, isp_ridacq_t *src, isp_ridacq_t *dst)
{
 int i;
 isp_get_hdr(isp, &src->ridacq_hdr, &dst->ridacq_hdr);
 ISP_IOXGET_32(isp, &src->ridacq_handle, dst->ridacq_handle);
 ISP_IOXGET_8(isp, &src->ridacq_vp_acquired, dst->ridacq_vp_acquired);
 ISP_IOXGET_8(isp, &src->ridacq_vp_setup, dst->ridacq_vp_setup);
 ISP_IOXGET_8(isp, &src->ridacq_vp_index, dst->ridacq_vp_index);
 ISP_IOXGET_8(isp, &src->ridacq_vp_status, dst->ridacq_vp_status);
 ISP_IOXGET_16(isp, &src->ridacq_vp_port_lo, dst->ridacq_vp_port_lo);
 ISP_IOXGET_8(isp, &src->ridacq_vp_port_hi, dst->ridacq_vp_port_hi);
 ISP_IOXGET_8(isp, &src->ridacq_format, dst->ridacq_format);
 for (i = 0; i < sizeof (src->ridacq_map) / sizeof (src->ridacq_map[0]); i++) {
  ISP_IOXGET_16(isp, &src->ridacq_map[i], dst->ridacq_map[i]);
 }
 for (i = 0; i < sizeof (src->ridacq_reserved1) / sizeof (src->ridacq_reserved1[0]); i++) {
  ISP_IOXGET_16(isp, &src->ridacq_reserved1[i], dst->ridacq_reserved1[i]);
 }
}
