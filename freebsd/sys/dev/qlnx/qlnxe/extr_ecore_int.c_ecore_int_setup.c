
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {TYPE_1__* p_sp_sb; int p_sb_attn; } ;
struct TYPE_2__ {int sb_info; } ;


 int ecore_int_sb_attn_setup (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_int_sb_setup (struct ecore_hwfn*,struct ecore_ptt*,int *) ;
 int ecore_int_sp_dpc_setup (struct ecore_hwfn*) ;

void ecore_int_setup(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt)
{
 if (!p_hwfn || !p_hwfn->p_sp_sb || !p_hwfn->p_sb_attn)
  return;

 ecore_int_sb_setup(p_hwfn, p_ptt, &p_hwfn->p_sp_sb->sb_info);
 ecore_int_sb_attn_setup(p_hwfn, p_ptt);
 ecore_int_sp_dpc_setup(p_hwfn);
}
