
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ispsoftc_t ;
struct TYPE_4__ {int els_recv_dsd_a6348; int els_recv_dsd_a4732; int els_recv_dsd_a3116; int els_recv_dsd_a1500; int els_recv_dsd_length; int els_xmit_dsd_a6348; int els_xmit_dsd_a4732; int els_xmit_dsd_a3116; int els_xmit_dsd_a1500; int els_xmit_dsd_length; int els_xmit_bytecnt; int els_recv_bytecnt; int els_ctl_flags; int els_reserved3; int els_reserved2; int els_did_hi; int els_did_mid; int els_did_lo; int els_reserved1; int els_opcode; int els_recv_dsd_count; int els_rxid; int els_sof; int els_vphdl; int els_xmit_dsd_count; int els_nphdl; int els_status; int els_handle; int els_hdr; } ;
typedef TYPE_1__ els_t ;


 int ISP_IOXPUT_16 (int *,int ,int *) ;
 int ISP_IOXPUT_32 (int *,int ,int *) ;
 int ISP_IOXPUT_8 (int *,int ,int *) ;
 int isp_put_hdr (int *,int *,int *) ;

void
isp_put_els(ispsoftc_t *isp, els_t *src, els_t *dst)
{
 isp_put_hdr(isp, &src->els_hdr, &dst->els_hdr);
 ISP_IOXPUT_32(isp, src->els_handle, &dst->els_handle);
 ISP_IOXPUT_16(isp, src->els_status, &dst->els_status);
 ISP_IOXPUT_16(isp, src->els_nphdl, &dst->els_nphdl);
 ISP_IOXPUT_16(isp, src->els_xmit_dsd_count, &dst->els_xmit_dsd_count);
 ISP_IOXPUT_8(isp, src->els_vphdl, &dst->els_vphdl);
 ISP_IOXPUT_8(isp, src->els_sof, &dst->els_sof);
 ISP_IOXPUT_32(isp, src->els_rxid, &dst->els_rxid);
 ISP_IOXPUT_16(isp, src->els_recv_dsd_count, &dst->els_recv_dsd_count);
 ISP_IOXPUT_8(isp, src->els_opcode, &dst->els_opcode);
 ISP_IOXPUT_8(isp, src->els_reserved2, &dst->els_reserved1);
 ISP_IOXPUT_8(isp, src->els_did_lo, &dst->els_did_lo);
 ISP_IOXPUT_8(isp, src->els_did_mid, &dst->els_did_mid);
 ISP_IOXPUT_8(isp, src->els_did_hi, &dst->els_did_hi);
 ISP_IOXPUT_8(isp, src->els_reserved2, &dst->els_reserved2);
 ISP_IOXPUT_16(isp, src->els_reserved3, &dst->els_reserved3);
 ISP_IOXPUT_16(isp, src->els_ctl_flags, &dst->els_ctl_flags);
 ISP_IOXPUT_32(isp, src->els_recv_bytecnt, &dst->els_recv_bytecnt);
 ISP_IOXPUT_32(isp, src->els_xmit_bytecnt, &dst->els_xmit_bytecnt);
 ISP_IOXPUT_32(isp, src->els_xmit_dsd_length, &dst->els_xmit_dsd_length);
 ISP_IOXPUT_16(isp, src->els_xmit_dsd_a1500, &dst->els_xmit_dsd_a1500);
 ISP_IOXPUT_16(isp, src->els_xmit_dsd_a3116, &dst->els_xmit_dsd_a3116);
 ISP_IOXPUT_16(isp, src->els_xmit_dsd_a4732, &dst->els_xmit_dsd_a4732);
 ISP_IOXPUT_16(isp, src->els_xmit_dsd_a6348, &dst->els_xmit_dsd_a6348);
 ISP_IOXPUT_32(isp, src->els_recv_dsd_length, &dst->els_recv_dsd_length);
 ISP_IOXPUT_16(isp, src->els_recv_dsd_a1500, &dst->els_recv_dsd_a1500);
 ISP_IOXPUT_16(isp, src->els_recv_dsd_a3116, &dst->els_recv_dsd_a3116);
 ISP_IOXPUT_16(isp, src->els_recv_dsd_a4732, &dst->els_recv_dsd_a4732);
 ISP_IOXPUT_16(isp, src->els_recv_dsd_a6348, &dst->els_recv_dsd_a6348);
}
