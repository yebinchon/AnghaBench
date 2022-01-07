
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ispsoftc_t ;
struct TYPE_6__ {TYPE_1__* req_dataseg; int req_header; } ;
typedef TYPE_2__ ispcontreq_t ;
struct TYPE_5__ {int ds_count; int ds_base; } ;


 int ISP_CDSEG ;
 int ISP_IOXPUT_32 (int *,int ,int *) ;
 int isp_put_hdr (int *,int *,int *) ;

void
isp_put_cont_req(ispsoftc_t *isp, ispcontreq_t *src, ispcontreq_t *dst)
{
 int i;
 isp_put_hdr(isp, &src->req_header, &dst->req_header);
 for (i = 0; i < ISP_CDSEG; i++) {
  ISP_IOXPUT_32(isp, src->req_dataseg[i].ds_base, &dst->req_dataseg[i].ds_base);
  ISP_IOXPUT_32(isp, src->req_dataseg[i].ds_count, &dst->req_dataseg[i].ds_count);
 }
}
