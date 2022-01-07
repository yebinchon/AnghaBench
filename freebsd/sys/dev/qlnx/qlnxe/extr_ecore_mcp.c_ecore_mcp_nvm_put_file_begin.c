
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct ecore_dev {int mcp_nvm_resp; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DRV_MSG_CODE_NVM_PUT_FILE_BEGIN ;
 int ECORE_BUSY ;
 struct ecore_hwfn* ECORE_LEADING_HWFN (struct ecore_dev*) ;
 int ecore_mcp_cmd (struct ecore_hwfn*,struct ecore_ptt*,int ,int ,int *,int *) ;
 struct ecore_ptt* ecore_ptt_acquire (struct ecore_hwfn*) ;
 int ecore_ptt_release (struct ecore_hwfn*,struct ecore_ptt*) ;

enum _ecore_status_t ecore_mcp_nvm_put_file_begin(struct ecore_dev *p_dev,
        u32 addr)
{
 struct ecore_hwfn *p_hwfn = ECORE_LEADING_HWFN(p_dev);
 struct ecore_ptt *p_ptt;
 u32 resp, param;
 enum _ecore_status_t rc;

 p_ptt = ecore_ptt_acquire(p_hwfn);
 if (!p_ptt)
  return ECORE_BUSY;
 rc = ecore_mcp_cmd(p_hwfn, p_ptt, DRV_MSG_CODE_NVM_PUT_FILE_BEGIN, addr,
      &resp, &param);
 p_dev->mcp_nvm_resp = resp;
 ecore_ptt_release(p_hwfn, p_ptt);

 return rc;
}
