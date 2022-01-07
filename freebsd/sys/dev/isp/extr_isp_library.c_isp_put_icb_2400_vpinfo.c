
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ispsoftc_t ;
struct TYPE_4__ {int vp_global_options; int vp_count; } ;
typedef TYPE_1__ isp_icb_2400_vpinfo_t ;


 int ISP_IOXPUT_16 (int *,int ,int *) ;

void
isp_put_icb_2400_vpinfo(ispsoftc_t *isp, isp_icb_2400_vpinfo_t *src, isp_icb_2400_vpinfo_t *dst)
{
 ISP_IOXPUT_16(isp, src->vp_count, &dst->vp_count);
 ISP_IOXPUT_16(isp, src->vp_global_options, &dst->vp_global_options);
}
