
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpa_update_ramrod_data {int update_ipv6; int update_ipv4; int tpa_mode; void* sge_pause_thr_low; void* sge_pause_thr_high; void* sge_page_base_lo; void* sge_page_base_hi; void* sge_buff_size; int max_tpa_queues; int max_sges_for_packet; void* max_agg_size; int dont_verify_rings_pause_thr_flg; int complete_on_both_clients; int client_id; } ;
struct ecore_queue_update_tpa_params {int update_ipv6; int update_ipv4; int tpa_mode; int sge_pause_thr_low; int sge_pause_thr_high; int sge_map; int sge_buff_sz; int max_tpa_queues; int max_sges_pkt; int max_agg_sz; int dont_verify_thr; int complete_on_both_clients; } ;
struct ecore_queue_sp_obj {int cl_id; } ;
struct bxe_softc {int dummy; } ;


 void* ECORE_CPU_TO_LE16 (int ) ;
 void* ECORE_CPU_TO_LE32 (int ) ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;

__attribute__((used)) static void ecore_q_fill_update_tpa_data(struct bxe_softc *sc,
    struct ecore_queue_sp_obj *obj,
    struct ecore_queue_update_tpa_params *params,
    struct tpa_update_ramrod_data *data)
{
 data->client_id = obj->cl_id;
 data->complete_on_both_clients = params->complete_on_both_clients;
 data->dont_verify_rings_pause_thr_flg =
  params->dont_verify_thr;
 data->max_agg_size = ECORE_CPU_TO_LE16(params->max_agg_sz);
 data->max_sges_for_packet = params->max_sges_pkt;
 data->max_tpa_queues = params->max_tpa_queues;
 data->sge_buff_size = ECORE_CPU_TO_LE16(params->sge_buff_sz);
 data->sge_page_base_hi = ECORE_CPU_TO_LE32(U64_HI(params->sge_map));
 data->sge_page_base_lo = ECORE_CPU_TO_LE32(U64_LO(params->sge_map));
 data->sge_pause_thr_high = ECORE_CPU_TO_LE16(params->sge_pause_thr_high);
 data->sge_pause_thr_low = ECORE_CPU_TO_LE16(params->sge_pause_thr_low);
 data->tpa_mode = params->tpa_mode;
 data->update_ipv4 = params->update_ipv4;
 data->update_ipv6 = params->update_ipv6;
}
