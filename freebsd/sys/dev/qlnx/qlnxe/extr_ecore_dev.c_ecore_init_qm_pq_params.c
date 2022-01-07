
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_hwfn {int dummy; } ;


 int ecore_init_qm_advance_vport (struct ecore_hwfn*) ;
 int ecore_init_qm_lb_pq (struct ecore_hwfn*) ;
 int ecore_init_qm_low_latency_pq (struct ecore_hwfn*) ;
 int ecore_init_qm_mcos_pqs (struct ecore_hwfn*) ;
 int ecore_init_qm_offload_pq (struct ecore_hwfn*) ;
 int ecore_init_qm_ooo_pq (struct ecore_hwfn*) ;
 int ecore_init_qm_pure_ack_pq (struct ecore_hwfn*) ;
 int ecore_init_qm_rl_pqs (struct ecore_hwfn*) ;
 int ecore_init_qm_vf_pqs (struct ecore_hwfn*) ;

__attribute__((used)) static void ecore_init_qm_pq_params(struct ecore_hwfn *p_hwfn)
{

 ecore_init_qm_rl_pqs(p_hwfn);


 ecore_init_qm_mcos_pqs(p_hwfn);


 ecore_init_qm_lb_pq(p_hwfn);


 ecore_init_qm_ooo_pq(p_hwfn);


 ecore_init_qm_pure_ack_pq(p_hwfn);


 ecore_init_qm_offload_pq(p_hwfn);


 ecore_init_qm_low_latency_pq(p_hwfn);


 ecore_init_qm_advance_vport(p_hwfn);


 ecore_init_qm_vf_pqs(p_hwfn);
}
