
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u32 ;
struct ecore_hwfn {int abs_pf_id; struct ecore_dev* p_dev; } ;
struct ecore_dev {TYPE_1__* p_iov_info; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_4__ {int pos; int offset; void* first_vf_in_pf; int total_vfs; } ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,...) ;
 int ECORE_MSG_IOV ;
 int ECORE_NOMEM ;
 scalar_t__ ECORE_PATH_ID (struct ecore_hwfn*) ;
 int ECORE_SUCCESS ;
 int GFP_KERNEL ;
 scalar_t__ IS_VF (struct ecore_dev*) ;
 scalar_t__ MAX_NUM_VFS_BB ;
 int OSAL_FREE (struct ecore_dev*,TYPE_1__*) ;
 TYPE_1__* OSAL_NULL ;
 int OSAL_PCI_FIND_EXT_CAPABILITY (struct ecore_dev*,int ) ;
 TYPE_1__* OSAL_ZALLOC (struct ecore_dev*,int ,int) ;
 int PCI_EXT_CAP_ID_SRIOV ;
 int ecore_iov_pci_cfg_info (struct ecore_dev*) ;

enum _ecore_status_t ecore_iov_hw_info(struct ecore_hwfn *p_hwfn)
{
 struct ecore_dev *p_dev = p_hwfn->p_dev;
 int pos;
 enum _ecore_status_t rc;

 if (IS_VF(p_hwfn->p_dev))
  return ECORE_SUCCESS;


 pos = OSAL_PCI_FIND_EXT_CAPABILITY(p_hwfn->p_dev,
        PCI_EXT_CAP_ID_SRIOV);
 if (!pos) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_IOV, "No PCIe IOV support\n");
  return ECORE_SUCCESS;
 }



 p_dev->p_iov_info = OSAL_ZALLOC(p_dev, GFP_KERNEL,
     sizeof(*p_dev->p_iov_info));
 if (!p_dev->p_iov_info) {
  DP_NOTICE(p_hwfn, 0,
     "Can't support IOV due to lack of memory\n");
  return ECORE_NOMEM;
 }
 p_dev->p_iov_info->pos = pos;

 rc = ecore_iov_pci_cfg_info(p_dev);
 if (rc)
  return rc;





 if (!p_dev->p_iov_info->total_vfs) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
      "IOV capabilities, but no VFs are published\n");
  OSAL_FREE(p_dev, p_dev->p_iov_info);
  p_dev->p_iov_info = OSAL_NULL;
  return ECORE_SUCCESS;
 }
 if (p_hwfn->p_dev->p_iov_info->offset < (256 - p_hwfn->abs_pf_id)) {
  u32 first = p_hwfn->p_dev->p_iov_info->offset +
       p_hwfn->abs_pf_id - 16;

  p_dev->p_iov_info->first_vf_in_pf = first;

  if (ECORE_PATH_ID(p_hwfn))
   p_dev->p_iov_info->first_vf_in_pf -= MAX_NUM_VFS_BB;
 } else {
  u32 first = p_hwfn->p_dev->p_iov_info->offset +
       p_hwfn->abs_pf_id - 256;

  p_dev->p_iov_info->first_vf_in_pf = first;
 }

 DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
     "First VF in hwfn 0x%08x\n",
     p_dev->p_iov_info->first_vf_in_pf);

 return ECORE_SUCCESS;
}
