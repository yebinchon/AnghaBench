
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_hwfn {int pf_iov_info; int p_dev; } ;


 scalar_t__ IS_PF_SRIOV_ALLOC (struct ecore_hwfn*) ;
 int OSAL_FREE (int ,int ) ;
 int OSAL_NULL ;
 int PROTOCOLID_COMMON ;
 int ecore_iov_free_vfdb (struct ecore_hwfn*) ;
 int ecore_spq_unregister_async_cb (struct ecore_hwfn*,int ) ;

void ecore_iov_free(struct ecore_hwfn *p_hwfn)
{
 ecore_spq_unregister_async_cb(p_hwfn, PROTOCOLID_COMMON);

 if (IS_PF_SRIOV_ALLOC(p_hwfn)) {
  ecore_iov_free_vfdb(p_hwfn);
  OSAL_FREE(p_hwfn->p_dev, p_hwfn->pf_iov_info);
  p_hwfn->pf_iov_info = OSAL_NULL;
 }
}
