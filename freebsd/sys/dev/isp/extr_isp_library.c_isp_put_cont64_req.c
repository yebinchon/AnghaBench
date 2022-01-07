
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ispsoftc_t ;
struct TYPE_6__ {TYPE_1__* req_dataseg; int req_header; } ;
typedef TYPE_2__ ispcontreq64_t ;
struct TYPE_5__ {int ds_count; int ds_basehi; int ds_base; } ;


 int ISP_CDSEG64 ;
 int ISP_IOXPUT_32 (int *,int ,int *) ;
 int isp_put_hdr (int *,int *,int *) ;

void
isp_put_cont64_req(ispsoftc_t *isp, ispcontreq64_t *src, ispcontreq64_t *dst)
{
 int i;
 isp_put_hdr(isp, &src->req_header, &dst->req_header);
 for (i = 0; i < ISP_CDSEG64; i++) {
  ISP_IOXPUT_32(isp, src->req_dataseg[i].ds_base, &dst->req_dataseg[i].ds_base);
  ISP_IOXPUT_32(isp, src->req_dataseg[i].ds_basehi, &dst->req_dataseg[i].ds_basehi);
  ISP_IOXPUT_32(isp, src->req_dataseg[i].ds_count, &dst->req_dataseg[i].ds_count);
 }
}
