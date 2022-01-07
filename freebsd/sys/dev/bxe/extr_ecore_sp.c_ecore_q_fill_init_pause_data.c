
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxq_pause_params {int pri_map; int sge_th_hi; int sge_th_lo; int bd_th_hi; int bd_th_lo; int rcq_th_hi; int rcq_th_lo; } ;
struct ecore_queue_sp_obj {int dummy; } ;
struct client_init_rx_data {void* rx_cos_mask; void* sge_pause_thr_high; void* sge_pause_thr_low; void* bd_pause_thr_high; void* bd_pause_thr_low; void* cqe_pause_thr_high; void* cqe_pause_thr_low; } ;


 void* ECORE_CPU_TO_LE16 (int ) ;

__attribute__((used)) static void ecore_q_fill_init_pause_data(struct ecore_queue_sp_obj *o,
    struct rxq_pause_params *params,
    struct client_init_rx_data *rx_data)
{

 rx_data->cqe_pause_thr_low = ECORE_CPU_TO_LE16(params->rcq_th_lo);
 rx_data->cqe_pause_thr_high = ECORE_CPU_TO_LE16(params->rcq_th_hi);
 rx_data->bd_pause_thr_low = ECORE_CPU_TO_LE16(params->bd_th_lo);
 rx_data->bd_pause_thr_high = ECORE_CPU_TO_LE16(params->bd_th_hi);
 rx_data->sge_pause_thr_low = ECORE_CPU_TO_LE16(params->sge_th_lo);
 rx_data->sge_pause_thr_high = ECORE_CPU_TO_LE16(params->sge_th_hi);
 rx_data->rx_cos_mask = ECORE_CPU_TO_LE16(params->pri_map);
}
