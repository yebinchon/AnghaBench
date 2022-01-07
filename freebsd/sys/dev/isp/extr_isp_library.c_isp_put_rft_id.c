
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * rftid_fc4types; int * rftid_portid; int rftid_reserved; int rftid_hdr; } ;
typedef TYPE_1__ rft_id_t ;
typedef int ispsoftc_t ;


 int ISP_IOZPUT_32 (int *,int ,int *) ;
 int ISP_IOZPUT_8 (int *,int ,int *) ;
 int isp_put_ct_hdr (int *,int *,int *) ;

void
isp_put_rft_id(ispsoftc_t *isp, rft_id_t *src, rft_id_t *dst)
{
 int i;
 isp_put_ct_hdr(isp, &src->rftid_hdr, &dst->rftid_hdr);
 ISP_IOZPUT_8(isp, src->rftid_reserved, &dst->rftid_reserved);
 for (i = 0; i < 3; i++) {
  ISP_IOZPUT_8(isp, src->rftid_portid[i], &dst->rftid_portid[i]);
 }
 for (i = 0; i < 8; i++) {
  ISP_IOZPUT_32(isp, src->rftid_fc4types[i], &dst->rftid_fc4types[i]);
 }
}
