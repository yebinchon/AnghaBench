
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_qm_info {void* wfq_data; void* qm_port_params; void* qm_vport_params; void* qm_pq_params; } ;
struct ecore_hwfn {int p_dev; struct ecore_qm_info qm_info; } ;


 int OSAL_FREE (int ,void*) ;
 void* OSAL_NULL ;

__attribute__((used)) static void ecore_qm_info_free(struct ecore_hwfn *p_hwfn)
{
 struct ecore_qm_info *qm_info = &p_hwfn->qm_info;

 OSAL_FREE(p_hwfn->p_dev, qm_info->qm_pq_params);
 qm_info->qm_pq_params = OSAL_NULL;
 OSAL_FREE(p_hwfn->p_dev, qm_info->qm_vport_params);
 qm_info->qm_vport_params = OSAL_NULL;
 OSAL_FREE(p_hwfn->p_dev, qm_info->qm_port_params);
 qm_info->qm_port_params = OSAL_NULL;
 OSAL_FREE(p_hwfn->p_dev, qm_info->wfq_data);
 qm_info->wfq_data = OSAL_NULL;
}
