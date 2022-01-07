
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rffid_fc4type; int rffid_fc4features; int rffid_reserved2; int * rffid_portid; int rffid_reserved; int rffid_hdr; } ;
typedef TYPE_1__ rff_id_t ;
typedef int ispsoftc_t ;


 int ISP_IOZPUT_16 (int *,int ,int *) ;
 int ISP_IOZPUT_8 (int *,int ,int *) ;
 int isp_put_ct_hdr (int *,int *,int *) ;

void
isp_put_rff_id(ispsoftc_t *isp, rff_id_t *src, rff_id_t *dst)
{
 int i;

 isp_put_ct_hdr(isp, &src->rffid_hdr, &dst->rffid_hdr);
 ISP_IOZPUT_8(isp, src->rffid_reserved, &dst->rffid_reserved);
 for (i = 0; i < 3; i++)
  ISP_IOZPUT_8(isp, src->rffid_portid[i], &dst->rffid_portid[i]);
 ISP_IOZPUT_16(isp, src->rffid_reserved2, &dst->rffid_reserved2);
 ISP_IOZPUT_8(isp, src->rffid_fc4features, &dst->rffid_fc4features);
 ISP_IOZPUT_8(isp, src->rffid_fc4type, &dst->rffid_fc4type);
}
