
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* snscb_data; scalar_t__ snscb_sblen; scalar_t__* snscb_addr; scalar_t__ snscb_rblen; } ;
typedef TYPE_1__ sns_screq_t ;
typedef int ispsoftc_t ;


 int ISP_IOXPUT_16 (int *,scalar_t__,scalar_t__*) ;

void
isp_put_sns_request(ispsoftc_t *isp, sns_screq_t *src, sns_screq_t *dst)
{
 int i, nw = (int) src->snscb_sblen;
 ISP_IOXPUT_16(isp, src->snscb_rblen, &dst->snscb_rblen);
 for (i = 0; i < 4; i++) {
  ISP_IOXPUT_16(isp, src->snscb_addr[i], &dst->snscb_addr[i]);
 }
 ISP_IOXPUT_16(isp, src->snscb_sblen, &dst->snscb_sblen);
 for (i = 0; i < nw; i++) {
  ISP_IOXPUT_16(isp, src->snscb_data[i], &dst->snscb_data[i]);
 }
}
