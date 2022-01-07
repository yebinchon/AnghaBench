
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_hwfn {int dummy; } ;


 int ecore_int_sb_attn_free (struct ecore_hwfn*) ;
 int ecore_int_sp_dpc_free (struct ecore_hwfn*) ;
 int ecore_int_sp_sb_free (struct ecore_hwfn*) ;

void ecore_int_free(struct ecore_hwfn *p_hwfn)
{
 ecore_int_sp_sb_free(p_hwfn);
 ecore_int_sb_attn_free(p_hwfn);
 ecore_int_sp_dpc_free(p_hwfn);
}
