
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ispsoftc_t ;
struct TYPE_4__ {int rqs_flags; int rqs_seqno; int rqs_entry_count; int rqs_entry_type; } ;
typedef TYPE_1__ isphdr_t ;


 int ISP_IOXPUT_8 (int *,int ,int *) ;
 scalar_t__ ISP_IS_SBUS (int *) ;

void
isp_put_hdr(ispsoftc_t *isp, isphdr_t *hpsrc, isphdr_t *hpdst)
{
 if (ISP_IS_SBUS(isp)) {
  ISP_IOXPUT_8(isp, hpsrc->rqs_entry_type, &hpdst->rqs_entry_count);
  ISP_IOXPUT_8(isp, hpsrc->rqs_entry_count, &hpdst->rqs_entry_type);
  ISP_IOXPUT_8(isp, hpsrc->rqs_seqno, &hpdst->rqs_flags);
  ISP_IOXPUT_8(isp, hpsrc->rqs_flags, &hpdst->rqs_seqno);
 } else {
  ISP_IOXPUT_8(isp, hpsrc->rqs_entry_type, &hpdst->rqs_entry_type);
  ISP_IOXPUT_8(isp, hpsrc->rqs_entry_count, &hpdst->rqs_entry_count);
  ISP_IOXPUT_8(isp, hpsrc->rqs_seqno, &hpdst->rqs_seqno);
  ISP_IOXPUT_8(isp, hpsrc->rqs_flags, &hpdst->rqs_flags);
 }
}
