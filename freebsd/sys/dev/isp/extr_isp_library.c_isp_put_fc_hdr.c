
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ispsoftc_t ;
struct TYPE_4__ {int parameter; int rx_id; int ox_id; int seq_cnt; int df_ctl; int seq_id; int * f_ctl; int type; int * s_id; int cs_ctl; int * d_id; int r_ctl; } ;
typedef TYPE_1__ fc_hdr_t ;


 int ISP_IOZPUT_16 (int *,int ,int *) ;
 int ISP_IOZPUT_32 (int *,int ,int *) ;
 int ISP_IOZPUT_8 (int *,int ,int *) ;

void
isp_put_fc_hdr(ispsoftc_t *isp, fc_hdr_t *src, fc_hdr_t *dst)
{
        ISP_IOZPUT_8(isp, src->r_ctl, &dst->r_ctl);
        ISP_IOZPUT_8(isp, src->d_id[0], &dst->d_id[0]);
        ISP_IOZPUT_8(isp, src->d_id[1], &dst->d_id[1]);
        ISP_IOZPUT_8(isp, src->d_id[2], &dst->d_id[2]);
        ISP_IOZPUT_8(isp, src->cs_ctl, &dst->cs_ctl);
        ISP_IOZPUT_8(isp, src->s_id[0], &dst->s_id[0]);
        ISP_IOZPUT_8(isp, src->s_id[1], &dst->s_id[1]);
        ISP_IOZPUT_8(isp, src->s_id[2], &dst->s_id[2]);
        ISP_IOZPUT_8(isp, src->type, &dst->type);
        ISP_IOZPUT_8(isp, src->f_ctl[0], &dst->f_ctl[0]);
        ISP_IOZPUT_8(isp, src->f_ctl[1], &dst->f_ctl[1]);
        ISP_IOZPUT_8(isp, src->f_ctl[2], &dst->f_ctl[2]);
        ISP_IOZPUT_8(isp, src->seq_id, &dst->seq_id);
        ISP_IOZPUT_8(isp, src->df_ctl, &dst->df_ctl);
        ISP_IOZPUT_16(isp, src->seq_cnt, &dst->seq_cnt);
        ISP_IOZPUT_16(isp, src->ox_id, &dst->ox_id);
        ISP_IOZPUT_16(isp, src->rx_id, &dst->rx_id);
        ISP_IOZPUT_32(isp, src->parameter, &dst->parameter);
}
