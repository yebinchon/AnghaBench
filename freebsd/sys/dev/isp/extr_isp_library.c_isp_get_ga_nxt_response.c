
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * snscb_hardaddr; int snscb_reserved; int * snscb_fpname; int * snscb_fc4_types; int * snscb_svc_class; int * snscb_ipaddr; int * snscb_ipassoc; int * snscb_nname; int snscb_nnlen; int * snscb_nodename; int * snscb_pname; int snscb_pnlen; int * snscb_portname; int * snscb_port_id; int snscb_port_type; int snscb_cthdr; } ;
typedef TYPE_1__ sns_ga_nxt_rsp_t ;
typedef int ispsoftc_t ;


 int ISP_IOZGET_8 (int *,int *,int ) ;
 int isp_get_ct_hdr (int *,int *,int *) ;

void
isp_get_ga_nxt_response(ispsoftc_t *isp, sns_ga_nxt_rsp_t *src, sns_ga_nxt_rsp_t *dst)
{
 int i;
 isp_get_ct_hdr(isp, &src->snscb_cthdr, &dst->snscb_cthdr);
 ISP_IOZGET_8(isp, &src->snscb_port_type, dst->snscb_port_type);
 for (i = 0; i < 3; i++) {
  ISP_IOZGET_8(isp, &src->snscb_port_id[i], dst->snscb_port_id[i]);
 }
 for (i = 0; i < 8; i++) {
  ISP_IOZGET_8(isp, &src->snscb_portname[i], dst->snscb_portname[i]);
 }
 ISP_IOZGET_8(isp, &src->snscb_pnlen, dst->snscb_pnlen);
 for (i = 0; i < 255; i++) {
  ISP_IOZGET_8(isp, &src->snscb_pname[i], dst->snscb_pname[i]);
 }
 for (i = 0; i < 8; i++) {
  ISP_IOZGET_8(isp, &src->snscb_nodename[i], dst->snscb_nodename[i]);
 }
 ISP_IOZGET_8(isp, &src->snscb_nnlen, dst->snscb_nnlen);
 for (i = 0; i < 255; i++) {
  ISP_IOZGET_8(isp, &src->snscb_nname[i], dst->snscb_nname[i]);
 }
 for (i = 0; i < 8; i++) {
  ISP_IOZGET_8(isp, &src->snscb_ipassoc[i], dst->snscb_ipassoc[i]);
 }
 for (i = 0; i < 16; i++) {
  ISP_IOZGET_8(isp, &src->snscb_ipaddr[i], dst->snscb_ipaddr[i]);
 }
 for (i = 0; i < 4; i++) {
  ISP_IOZGET_8(isp, &src->snscb_svc_class[i], dst->snscb_svc_class[i]);
 }
 for (i = 0; i < 32; i++) {
  ISP_IOZGET_8(isp, &src->snscb_fc4_types[i], dst->snscb_fc4_types[i]);
 }
 for (i = 0; i < 8; i++) {
  ISP_IOZGET_8(isp, &src->snscb_fpname[i], dst->snscb_fpname[i]);
 }
 ISP_IOZGET_8(isp, &src->snscb_reserved, dst->snscb_reserved);
 for (i = 0; i < 3; i++) {
  ISP_IOZGET_8(isp, &src->snscb_hardaddr[i], dst->snscb_hardaddr[i]);
 }
}
