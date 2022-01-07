
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rsnnnn_length; int * rsnnnn_nodename; int rsnnnn_hdr; } ;
typedef TYPE_1__ rsnn_nn_t ;
typedef int ispsoftc_t ;


 int ISP_IOZPUT_8 (int *,int ,int *) ;
 int isp_put_ct_hdr (int *,int *,int *) ;

void
isp_put_rsnn_nn(ispsoftc_t *isp, rsnn_nn_t *src, rsnn_nn_t *dst)
{
 int i;
 isp_put_ct_hdr(isp, &src->rsnnnn_hdr, &dst->rsnnnn_hdr);
 for (i = 0; i < 8; i++)
  ISP_IOZPUT_8(isp, src->rsnnnn_nodename[i], &dst->rsnnnn_nodename[i]);
 ISP_IOZPUT_8(isp, src->rsnnnn_length, &dst->rsnnnn_length);


}
