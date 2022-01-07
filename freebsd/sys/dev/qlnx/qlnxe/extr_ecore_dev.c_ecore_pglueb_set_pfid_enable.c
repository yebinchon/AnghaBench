
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int ECORE_SUCCESS ;
 int ECORE_UNKNOWN_ERROR ;
 int OSAL_UDELAY (int) ;
 int PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER ;
 int ecore_rd (struct ecore_hwfn*,struct ecore_ptt*,int ) ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int) ;

enum _ecore_status_t ecore_pglueb_set_pfid_enable(struct ecore_hwfn *p_hwfn,
        struct ecore_ptt *p_ptt,
        bool b_enable)
{
 u32 delay_idx = 0, val, set_val = b_enable ? 1 : 0;


 ecore_wr(p_hwfn, p_ptt,
   PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER, set_val);


 for (delay_idx = 0; delay_idx < 20000; delay_idx++) {
  val = ecore_rd(p_hwfn, p_ptt,
          PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER);
  if (val == set_val)
   break;

  OSAL_UDELAY(50);
 }

 if (val != set_val) {
  DP_NOTICE(p_hwfn, 1,
     "PFID_ENABLE_MASTER wasn't changed after a second\n");
  return ECORE_UNKNOWN_ERROR;
 }

 return ECORE_SUCCESS;
}
