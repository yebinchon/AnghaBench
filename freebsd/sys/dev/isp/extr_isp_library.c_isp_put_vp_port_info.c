
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * vp_port_nodename; int * vp_port_portname; int vp_port_loopid; int vp_port_options; int vp_port_status; } ;
typedef TYPE_1__ vp_port_info_t ;
typedef int ispsoftc_t ;


 int ISP_IOXPUT_16 (int *,int ,int *) ;
 int ISP_IOXPUT_8 (int *,int ,int *) ;

void
isp_put_vp_port_info(ispsoftc_t *isp, vp_port_info_t *src, vp_port_info_t *dst)
{
 int i;
 ISP_IOXPUT_16(isp, src->vp_port_status, &dst->vp_port_status);
 ISP_IOXPUT_8(isp, src->vp_port_options, &dst->vp_port_options);
 ISP_IOXPUT_8(isp, src->vp_port_loopid, &dst->vp_port_loopid);
 for (i = 0; i < 8; i++) {
  ISP_IOXPUT_8(isp, src->vp_port_portname[i], &dst->vp_port_portname[i]);
 }
 for (i = 0; i < 8; i++) {
  ISP_IOXPUT_8(isp, src->vp_port_nodename[i], &dst->vp_port_nodename[i]);
 }

}
