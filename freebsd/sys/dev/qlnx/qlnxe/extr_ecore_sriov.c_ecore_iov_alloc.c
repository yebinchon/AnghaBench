
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_pf_iov {int dummy; } ;
struct ecore_hwfn {struct ecore_pf_iov* pf_iov_info; int p_dev; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*) ;
 int ECORE_MSG_IOV ;
 int ECORE_NOMEM ;
 int ECORE_SUCCESS ;
 int GFP_KERNEL ;
 int IS_PF_SRIOV (struct ecore_hwfn*) ;
 struct ecore_pf_iov* OSAL_ZALLOC (int ,int ,int) ;
 int PROTOCOLID_COMMON ;
 int ecore_iov_allocate_vfdb (struct ecore_hwfn*) ;
 int ecore_spq_register_async_cb (struct ecore_hwfn*,int ,int ) ;
 int ecore_sriov_eqe_event ;

enum _ecore_status_t ecore_iov_alloc(struct ecore_hwfn *p_hwfn)
{
 struct ecore_pf_iov *p_sriov;

 if (!IS_PF_SRIOV(p_hwfn)) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
      "No SR-IOV - no need for IOV db\n");
  return ECORE_SUCCESS;
 }

 p_sriov = OSAL_ZALLOC(p_hwfn->p_dev, GFP_KERNEL, sizeof(*p_sriov));
 if (!p_sriov) {
  DP_NOTICE(p_hwfn, 0, "Failed to allocate `struct ecore_sriov'\n");
  return ECORE_NOMEM;
 }

 p_hwfn->pf_iov_info = p_sriov;

 ecore_spq_register_async_cb(p_hwfn, PROTOCOLID_COMMON,
        ecore_sriov_eqe_event);

 return ecore_iov_allocate_vfdb(p_hwfn);
}
