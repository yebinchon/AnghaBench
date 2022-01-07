
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rspnid_length; int rspnid_reserved; int rspnid_hdr; } ;
typedef TYPE_1__ rspn_id_t ;
typedef int ispsoftc_t ;


 int ISP_IOZPUT_8 (int *,int ,int *) ;
 int isp_put_ct_hdr (int *,int *,int *) ;

void
isp_put_rspn_id(ispsoftc_t *isp, rspn_id_t *src, rspn_id_t *dst)
{

 isp_put_ct_hdr(isp, &src->rspnid_hdr, &dst->rspnid_hdr);
 ISP_IOZPUT_8(isp, src->rspnid_reserved, &dst->rspnid_reserved);
 ISP_IOZPUT_8(isp, src->rspnid_length, &dst->rspnid_length);


}
