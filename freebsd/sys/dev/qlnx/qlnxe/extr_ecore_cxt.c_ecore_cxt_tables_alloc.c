
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_hwfn {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int ECORE_SUCCESS ;
 int ecore_cid_map_alloc (struct ecore_hwfn*) ;
 int ecore_cxt_mngr_free (struct ecore_hwfn*) ;
 int ecore_cxt_src_t2_alloc (struct ecore_hwfn*) ;
 int ecore_ilt_shadow_alloc (struct ecore_hwfn*) ;

enum _ecore_status_t ecore_cxt_tables_alloc(struct ecore_hwfn *p_hwfn)
{
 enum _ecore_status_t rc;


 rc = ecore_ilt_shadow_alloc(p_hwfn);
 if (rc) {
  DP_NOTICE(p_hwfn, 0, "Failed to allocate ilt memory\n");
  goto tables_alloc_fail;
 }


 rc = ecore_cxt_src_t2_alloc(p_hwfn);
 if (rc) {
  DP_NOTICE(p_hwfn, 0, "Failed to allocate T2 memory\n");
  goto tables_alloc_fail;
 }


 rc = ecore_cid_map_alloc(p_hwfn);
 if (rc) {
  DP_NOTICE(p_hwfn, 0, "Failed to allocate cid maps\n");
  goto tables_alloc_fail;
 }

 return ECORE_SUCCESS;

tables_alloc_fail:
 ecore_cxt_mngr_free(p_hwfn);
 return rc;
}
