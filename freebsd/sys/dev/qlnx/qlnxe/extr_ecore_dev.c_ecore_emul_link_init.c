
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int p_dev; } ;


 scalar_t__ ECORE_IS_AH (int ) ;
 scalar_t__ ECORE_IS_E5 (int ) ;
 int ecore_emul_link_init_ah_e5 (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_emul_link_init_bb (struct ecore_hwfn*,struct ecore_ptt*) ;

__attribute__((used)) static void ecore_emul_link_init(struct ecore_hwfn *p_hwfn,
     struct ecore_ptt *p_ptt)
{
 if (ECORE_IS_AH(p_hwfn->p_dev) || ECORE_IS_E5(p_hwfn->p_dev))
  ecore_emul_link_init_ah_e5(p_hwfn, p_ptt);
 else
  ecore_emul_link_init_bb(p_hwfn, p_ptt);

 return;
}
