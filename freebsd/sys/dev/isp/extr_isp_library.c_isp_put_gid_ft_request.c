
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int snscb_fc4_type; int snscb_reserved3; int snscb_mword_div_2; int snscb_cmd; int snscb_reserved1; int snscb_sblen; int * snscb_addr; int snscb_reserved0; int snscb_rblen; } ;
typedef TYPE_1__ sns_gid_ft_req_t ;
typedef int ispsoftc_t ;


 int ISP_IOXPUT_16 (int *,int ,int *) ;
 int ISP_IOXPUT_32 (int *,int ,int *) ;

void
isp_put_gid_ft_request(ispsoftc_t *isp, sns_gid_ft_req_t *src, sns_gid_ft_req_t *dst)
{
 ISP_IOXPUT_16(isp, src->snscb_rblen, &dst->snscb_rblen);
 ISP_IOXPUT_16(isp, src->snscb_reserved0, &dst->snscb_reserved0);
 ISP_IOXPUT_16(isp, src->snscb_addr[0], &dst->snscb_addr[0]);
 ISP_IOXPUT_16(isp, src->snscb_addr[1], &dst->snscb_addr[1]);
 ISP_IOXPUT_16(isp, src->snscb_addr[2], &dst->snscb_addr[2]);
 ISP_IOXPUT_16(isp, src->snscb_addr[3], &dst->snscb_addr[3]);
 ISP_IOXPUT_16(isp, src->snscb_sblen, &dst->snscb_sblen);
 ISP_IOXPUT_16(isp, src->snscb_reserved1, &dst->snscb_reserved1);
 ISP_IOXPUT_16(isp, src->snscb_cmd, &dst->snscb_cmd);
 ISP_IOXPUT_16(isp, src->snscb_mword_div_2, &dst->snscb_mword_div_2);
 ISP_IOXPUT_32(isp, src->snscb_reserved3, &dst->snscb_reserved3);
 ISP_IOXPUT_32(isp, src->snscb_fc4_type, &dst->snscb_fc4_type);
}
