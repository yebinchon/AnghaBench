
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_hwfn {int b_sp_dpc_enabled; int sp_dpc; } ;


 int OSAL_DPC_INIT (int ,struct ecore_hwfn*) ;

__attribute__((used)) static void ecore_int_sp_dpc_setup(struct ecore_hwfn *p_hwfn)
{
 OSAL_DPC_INIT(p_hwfn->sp_dpc, p_hwfn);
 p_hwfn->b_sp_dpc_enabled = 1;
}
