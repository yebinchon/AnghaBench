
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_hwfn {int sp_dpc; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int ECORE_NOMEM ;
 int ECORE_SUCCESS ;
 int OSAL_DPC_ALLOC (struct ecore_hwfn*) ;

__attribute__((used)) static enum _ecore_status_t ecore_int_sp_dpc_alloc(struct ecore_hwfn *p_hwfn)
{
 p_hwfn->sp_dpc = OSAL_DPC_ALLOC(p_hwfn);
 if (!p_hwfn->sp_dpc)
  return ECORE_NOMEM;

 return ECORE_SUCCESS;
}
