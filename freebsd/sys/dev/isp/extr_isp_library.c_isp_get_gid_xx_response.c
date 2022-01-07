
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* snscb_ports; int snscb_cthdr; } ;
typedef TYPE_2__ sns_gid_xx_rsp_t ;
typedef int ispsoftc_t ;
struct TYPE_5__ {int control; int* portid; } ;


 int ISP_IOZGET_8 (int *,int*,int) ;
 int isp_get_ct_hdr (int *,int *,int *) ;

void
isp_get_gid_xx_response(ispsoftc_t *isp, sns_gid_xx_rsp_t *src, sns_gid_xx_rsp_t *dst, int nwords)
{
 int i, j;

 isp_get_ct_hdr(isp, &src->snscb_cthdr, &dst->snscb_cthdr);
 for (i = 0; i < nwords; i++) {
  ISP_IOZGET_8(isp, &src->snscb_ports[i].control,
      dst->snscb_ports[i].control);
  for (j = 0; j < 3; j++) {
   ISP_IOZGET_8(isp, &src->snscb_ports[i].portid[j],
       dst->snscb_ports[i].portid[j]);
  }
  if (dst->snscb_ports[i].control & 0x80)
   break;
 }
}
