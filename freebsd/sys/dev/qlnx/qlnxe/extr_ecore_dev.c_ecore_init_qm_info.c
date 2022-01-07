
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_hwfn {int dummy; } ;


 int ecore_dp_init_qm_params (struct ecore_hwfn*) ;
 int ecore_init_qm_params (struct ecore_hwfn*) ;
 int ecore_init_qm_port_params (struct ecore_hwfn*) ;
 int ecore_init_qm_pq_params (struct ecore_hwfn*) ;
 int ecore_init_qm_reset_params (struct ecore_hwfn*) ;
 int ecore_init_qm_vport_params (struct ecore_hwfn*) ;

__attribute__((used)) static void ecore_init_qm_info(struct ecore_hwfn *p_hwfn)
{

 ecore_init_qm_reset_params(p_hwfn);


 ecore_init_qm_params(p_hwfn);


 ecore_init_qm_port_params(p_hwfn);


 ecore_init_qm_vport_params(p_hwfn);


 ecore_init_qm_pq_params(p_hwfn);


 ecore_dp_init_qm_params(p_hwfn);
}
