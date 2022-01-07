
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * snscb_wwn; int snscb_cthdr; } ;
typedef TYPE_1__ sns_gxn_id_rsp_t ;
typedef int ispsoftc_t ;


 int ISP_IOZGET_8 (int *,int *,int ) ;
 int isp_get_ct_hdr (int *,int *,int *) ;

void
isp_get_gxn_id_response(ispsoftc_t *isp, sns_gxn_id_rsp_t *src, sns_gxn_id_rsp_t *dst)
{
 int i;

 isp_get_ct_hdr(isp, &src->snscb_cthdr, &dst->snscb_cthdr);
 for (i = 0; i < 8; i++)
  ISP_IOZGET_8(isp, &src->snscb_wwn[i], dst->snscb_wwn[i]);
}
