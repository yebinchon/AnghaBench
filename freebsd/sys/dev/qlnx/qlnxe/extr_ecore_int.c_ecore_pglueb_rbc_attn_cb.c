
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_hwfn {int p_dpc_ptt; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int ecore_pglueb_rbc_attn_handler (struct ecore_hwfn*,int ) ;

__attribute__((used)) static enum _ecore_status_t ecore_pglueb_rbc_attn_cb(struct ecore_hwfn *p_hwfn)
{
 return ecore_pglueb_rbc_attn_handler(p_hwfn, p_hwfn->p_dpc_ptt);
}
