
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int * req_sense_data; int req_header; } ;
typedef TYPE_1__ ispstatus_cont_t ;
typedef int ispsoftc_t ;


 int ISP_IOXGET_8 (int *,int *,int ) ;
 int ISP_IOZGET_32 (int *,int ,int ) ;
 scalar_t__ IS_24XX (int *) ;
 int isp_get_hdr (int *,int *,int *) ;

void
isp_get_cont_response(ispsoftc_t *isp, ispstatus_cont_t *src, ispstatus_cont_t *dst)
{
 int i;
 isp_get_hdr(isp, &src->req_header, &dst->req_header);
 if (IS_24XX(isp)) {
  uint32_t *a, *b;
  a = (uint32_t *) src->req_sense_data;
  b = (uint32_t *) dst->req_sense_data;
  for (i = 0; i < (sizeof (src->req_sense_data) / sizeof (uint32_t)); i++) {
   ISP_IOZGET_32(isp, a++, *b++);
  }
 } else {
  for (i = 0; i < sizeof (src->req_sense_data); i++) {
   ISP_IOXGET_8(isp, &src->req_sense_data[i], dst->req_sense_data[i]);
  }
 }
}
