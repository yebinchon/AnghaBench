
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ update_tpa_param_flg; scalar_t__ update_tpa_en_flg; } ;
struct eth_vport_tpa_param {void* tpa_min_size_to_cont; void* tpa_min_size_to_start; void* tpa_max_size; int tpa_max_aggs_num; int tpa_gro_consistent_flg; int tpa_hdr_data_split_flg; int tpa_pkt_split_flg; int max_buff_num; int tpa_ipv6_tunn_en_flg; int tpa_ipv4_tunn_en_flg; int tpa_ipv6_en_flg; int tpa_ipv4_en_flg; } ;
struct vport_update_ramrod_data {TYPE_1__ common; struct eth_vport_tpa_param tpa_param; } ;
struct ecore_sge_tpa_params {int tpa_min_size_to_cont; int tpa_min_size_to_start; int tpa_max_size; int tpa_max_aggs_num; int tpa_gro_consistent_flg; int tpa_hdr_data_split_flg; int tpa_pkt_split_flg; int max_buffers_per_cqe; scalar_t__ update_tpa_param_flg; int tpa_ipv6_tunn_en_flg; int tpa_ipv4_tunn_en_flg; int tpa_ipv6_en_flg; int tpa_ipv4_en_flg; scalar_t__ update_tpa_en_flg; } ;


 void* OSAL_CPU_TO_LE16 (int ) ;

__attribute__((used)) static void
ecore_sp_vport_update_sge_tpa(struct vport_update_ramrod_data *p_ramrod,
         struct ecore_sge_tpa_params *p_params)
{
 struct eth_vport_tpa_param *p_tpa;
 u16 val;

 if (!p_params) {
  p_ramrod->common.update_tpa_param_flg = 0;
  p_ramrod->common.update_tpa_en_flg = 0;
  p_ramrod->common.update_tpa_param_flg = 0;
  return;
 }

 p_ramrod->common.update_tpa_en_flg = p_params->update_tpa_en_flg;
 p_tpa = &p_ramrod->tpa_param;
 p_tpa->tpa_ipv4_en_flg = p_params->tpa_ipv4_en_flg;
 p_tpa->tpa_ipv6_en_flg = p_params->tpa_ipv6_en_flg;
 p_tpa->tpa_ipv4_tunn_en_flg = p_params->tpa_ipv4_tunn_en_flg;
 p_tpa->tpa_ipv6_tunn_en_flg = p_params->tpa_ipv6_tunn_en_flg;

 p_ramrod->common.update_tpa_param_flg = p_params->update_tpa_param_flg;
 p_tpa->max_buff_num = p_params->max_buffers_per_cqe;
 p_tpa->tpa_pkt_split_flg = p_params->tpa_pkt_split_flg;
 p_tpa->tpa_hdr_data_split_flg = p_params->tpa_hdr_data_split_flg;
 p_tpa->tpa_gro_consistent_flg = p_params->tpa_gro_consistent_flg;
 p_tpa->tpa_max_aggs_num = p_params->tpa_max_aggs_num;
 val = p_params->tpa_max_size;
 p_tpa->tpa_max_size = OSAL_CPU_TO_LE16(val);
 val = p_params->tpa_min_size_to_start;
 p_tpa->tpa_min_size_to_start = OSAL_CPU_TO_LE16(val);
 val = p_params->tpa_min_size_to_cont;
 p_tpa->tpa_min_size_to_cont = OSAL_CPU_TO_LE16(val);
}
