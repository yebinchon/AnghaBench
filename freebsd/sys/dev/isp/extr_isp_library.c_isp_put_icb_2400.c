
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ispsoftc_t ;
struct TYPE_4__ {int * icb_reserved3; int icb_disctime; int * icb_enodemac; int * icb_reserved2; int icb_qos; int icb_fwoptions3; int icb_fwoptions2; int icb_fwoptions1; int icb_logintime; int icb_idelaytimer; int * icb_atioqaddr; int icb_atioqlen; int icb_atio_in; int * icb_reserved1; int icb_msixatio; int icb_msixresp; int * icb_priaddr; int * icb_respaddr; int * icb_rqstaddr; int icb_prqstqlen; int icb_ldn_nols; int icb_rqstqlen; int icb_rsltqlen; int icb_priout; int icb_retry_count; int icb_rqstout; int icb_rspnsin; int * icb_nodename; int * icb_portname; int icb_hardaddr; int icb_xchgcnt; int icb_execthrottle; int icb_maxfrmlen; int icb_reserved0; int icb_version; } ;
typedef TYPE_1__ isp_icb_2400_t ;


 int ISP_IOXPUT_16 (int *,int ,int *) ;
 int ISP_IOXPUT_32 (int *,int ,int *) ;
 int ISP_IOXPUT_8 (int *,int ,int *) ;

void
isp_put_icb_2400(ispsoftc_t *isp, isp_icb_2400_t *src, isp_icb_2400_t *dst)
{
 int i;
 ISP_IOXPUT_16(isp, src->icb_version, &dst->icb_version);
 ISP_IOXPUT_16(isp, src->icb_reserved0, &dst->icb_reserved0);
 ISP_IOXPUT_16(isp, src->icb_maxfrmlen, &dst->icb_maxfrmlen);
 ISP_IOXPUT_16(isp, src->icb_execthrottle, &dst->icb_execthrottle);
 ISP_IOXPUT_16(isp, src->icb_xchgcnt, &dst->icb_xchgcnt);
 ISP_IOXPUT_16(isp, src->icb_hardaddr, &dst->icb_hardaddr);
 for (i = 0; i < 8; i++) {
  ISP_IOXPUT_8(isp, src->icb_portname[i], &dst->icb_portname[i]);
 }
 for (i = 0; i < 8; i++) {
  ISP_IOXPUT_8(isp, src->icb_nodename[i], &dst->icb_nodename[i]);
 }
 ISP_IOXPUT_16(isp, src->icb_rspnsin, &dst->icb_rspnsin);
 ISP_IOXPUT_16(isp, src->icb_rqstout, &dst->icb_rqstout);
 ISP_IOXPUT_16(isp, src->icb_retry_count, &dst->icb_retry_count);
 ISP_IOXPUT_16(isp, src->icb_priout, &dst->icb_priout);
 ISP_IOXPUT_16(isp, src->icb_rsltqlen, &dst->icb_rsltqlen);
 ISP_IOXPUT_16(isp, src->icb_rqstqlen, &dst->icb_rqstqlen);
 ISP_IOXPUT_16(isp, src->icb_ldn_nols, &dst->icb_ldn_nols);
 ISP_IOXPUT_16(isp, src->icb_prqstqlen, &dst->icb_prqstqlen);
 for (i = 0; i < 4; i++) {
  ISP_IOXPUT_16(isp, src->icb_rqstaddr[i], &dst->icb_rqstaddr[i]);
 }
 for (i = 0; i < 4; i++) {
  ISP_IOXPUT_16(isp, src->icb_respaddr[i], &dst->icb_respaddr[i]);
 }
 for (i = 0; i < 4; i++) {
  ISP_IOXPUT_16(isp, src->icb_priaddr[i], &dst->icb_priaddr[i]);
 }
 ISP_IOXPUT_16(isp, src->icb_msixresp, &dst->icb_msixresp);
 ISP_IOXPUT_16(isp, src->icb_msixatio, &dst->icb_msixatio);
 for (i = 0; i < 2; i++) {
  ISP_IOXPUT_16(isp, src->icb_reserved1[i], &dst->icb_reserved1[i]);
 }
 ISP_IOXPUT_16(isp, src->icb_atio_in, &dst->icb_atio_in);
 ISP_IOXPUT_16(isp, src->icb_atioqlen, &dst->icb_atioqlen);
 for (i = 0; i < 4; i++) {
  ISP_IOXPUT_16(isp, src->icb_atioqaddr[i], &dst->icb_atioqaddr[i]);
 }
 ISP_IOXPUT_16(isp, src->icb_idelaytimer, &dst->icb_idelaytimer);
 ISP_IOXPUT_16(isp, src->icb_logintime, &dst->icb_logintime);
 ISP_IOXPUT_32(isp, src->icb_fwoptions1, &dst->icb_fwoptions1);
 ISP_IOXPUT_32(isp, src->icb_fwoptions2, &dst->icb_fwoptions2);
 ISP_IOXPUT_32(isp, src->icb_fwoptions3, &dst->icb_fwoptions3);
 ISP_IOXPUT_16(isp, src->icb_qos, &dst->icb_qos);
 for (i = 0; i < 3; i++)
  ISP_IOXPUT_16(isp, src->icb_reserved2[i], &dst->icb_reserved2[i]);
 for (i = 0; i < 3; i++)
  ISP_IOXPUT_16(isp, src->icb_enodemac[i], &dst->icb_enodemac[i]);
 ISP_IOXPUT_16(isp, src->icb_disctime, &dst->icb_disctime);
 for (i = 0; i < 4; i++)
  ISP_IOXPUT_16(isp, src->icb_reserved3[i], &dst->icb_reserved3[i]);
}
