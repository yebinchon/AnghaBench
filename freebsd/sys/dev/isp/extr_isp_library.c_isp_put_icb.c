
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ispsoftc_t ;
struct TYPE_4__ {int icb_zfwoptions; int icb_idelaytimer; int icb_racctimer; int icb_xfwoptions; int icb_reserved1; int icb_lunetimeout; int icb_icnt; int icb_ccnt; int icb_lunenables; int * icb_respaddr; int * icb_rqstaddr; int icb_rsltqlen; int icb_rqstqlen; int icb_rspnsin; int icb_rqstout; int * icb_nodename; int icb_logintime; int icb_iqdevtype; int icb_hardaddr; int * icb_portname; int icb_retry_delay; int icb_retry_count; int icb_execthrottle; int icb_maxalloc; int icb_maxfrmlen; int icb_fwoptions; int icb_reserved0; int icb_version; } ;
typedef TYPE_1__ isp_icb_t ;


 int ISP_IOXPUT_16 (int *,int ,int *) ;
 int ISP_IOXPUT_8 (int *,int ,int *) ;
 scalar_t__ ISP_IS_SBUS (int *) ;

void
isp_put_icb(ispsoftc_t *isp, isp_icb_t *src, isp_icb_t *dst)
{
 int i;
 if (ISP_IS_SBUS(isp)) {
  ISP_IOXPUT_8(isp, src->icb_version, &dst->icb_reserved0);
  ISP_IOXPUT_8(isp, src->icb_reserved0, &dst->icb_version);
 } else {
  ISP_IOXPUT_8(isp, src->icb_version, &dst->icb_version);
  ISP_IOXPUT_8(isp, src->icb_reserved0, &dst->icb_reserved0);
 }
 ISP_IOXPUT_16(isp, src->icb_fwoptions, &dst->icb_fwoptions);
 ISP_IOXPUT_16(isp, src->icb_maxfrmlen, &dst->icb_maxfrmlen);
 ISP_IOXPUT_16(isp, src->icb_maxalloc, &dst->icb_maxalloc);
 ISP_IOXPUT_16(isp, src->icb_execthrottle, &dst->icb_execthrottle);
 if (ISP_IS_SBUS(isp)) {
  ISP_IOXPUT_8(isp, src->icb_retry_count, &dst->icb_retry_delay);
  ISP_IOXPUT_8(isp, src->icb_retry_delay, &dst->icb_retry_count);
 } else {
  ISP_IOXPUT_8(isp, src->icb_retry_count, &dst->icb_retry_count);
  ISP_IOXPUT_8(isp, src->icb_retry_delay, &dst->icb_retry_delay);
 }
 for (i = 0; i < 8; i++) {
  ISP_IOXPUT_8(isp, src->icb_portname[i], &dst->icb_portname[i]);
 }
 ISP_IOXPUT_16(isp, src->icb_hardaddr, &dst->icb_hardaddr);
 if (ISP_IS_SBUS(isp)) {
  ISP_IOXPUT_8(isp, src->icb_iqdevtype, &dst->icb_logintime);
  ISP_IOXPUT_8(isp, src->icb_logintime, &dst->icb_iqdevtype);
 } else {
  ISP_IOXPUT_8(isp, src->icb_iqdevtype, &dst->icb_iqdevtype);
  ISP_IOXPUT_8(isp, src->icb_logintime, &dst->icb_logintime);
 }
 for (i = 0; i < 8; i++) {
  ISP_IOXPUT_8(isp, src->icb_nodename[i], &dst->icb_nodename[i]);
 }
 ISP_IOXPUT_16(isp, src->icb_rqstout, &dst->icb_rqstout);
 ISP_IOXPUT_16(isp, src->icb_rspnsin, &dst->icb_rspnsin);
 ISP_IOXPUT_16(isp, src->icb_rqstqlen, &dst->icb_rqstqlen);
 ISP_IOXPUT_16(isp, src->icb_rsltqlen, &dst->icb_rsltqlen);
 for (i = 0; i < 4; i++) {
  ISP_IOXPUT_16(isp, src->icb_rqstaddr[i], &dst->icb_rqstaddr[i]);
 }
 for (i = 0; i < 4; i++) {
  ISP_IOXPUT_16(isp, src->icb_respaddr[i], &dst->icb_respaddr[i]);
 }
 ISP_IOXPUT_16(isp, src->icb_lunenables, &dst->icb_lunenables);
 if (ISP_IS_SBUS(isp)) {
  ISP_IOXPUT_8(isp, src->icb_ccnt, &dst->icb_icnt);
  ISP_IOXPUT_8(isp, src->icb_icnt, &dst->icb_ccnt);
 } else {
  ISP_IOXPUT_8(isp, src->icb_ccnt, &dst->icb_ccnt);
  ISP_IOXPUT_8(isp, src->icb_icnt, &dst->icb_icnt);
 }
 ISP_IOXPUT_16(isp, src->icb_lunetimeout, &dst->icb_lunetimeout);
 ISP_IOXPUT_16(isp, src->icb_reserved1, &dst->icb_reserved1);
 ISP_IOXPUT_16(isp, src->icb_xfwoptions, &dst->icb_xfwoptions);
 if (ISP_IS_SBUS(isp)) {
  ISP_IOXPUT_8(isp, src->icb_racctimer, &dst->icb_idelaytimer);
  ISP_IOXPUT_8(isp, src->icb_idelaytimer, &dst->icb_racctimer);
 } else {
  ISP_IOXPUT_8(isp, src->icb_racctimer, &dst->icb_racctimer);
  ISP_IOXPUT_8(isp, src->icb_idelaytimer, &dst->icb_idelaytimer);
 }
 ISP_IOXPUT_16(isp, src->icb_zfwoptions, &dst->icb_zfwoptions);
}
