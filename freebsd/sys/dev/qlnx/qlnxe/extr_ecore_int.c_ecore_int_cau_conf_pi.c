
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ecore_sb_info {int igu_sb_id; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum ecore_coalescing_fsm { ____Placeholder_ecore_coalescing_fsm } ecore_coalescing_fsm ;


 int _ecore_int_cau_conf_pi (struct ecore_hwfn*,struct ecore_ptt*,int ,int ,int,int ) ;

void ecore_int_cau_conf_pi(struct ecore_hwfn *p_hwfn,
      struct ecore_ptt *p_ptt,
      struct ecore_sb_info *p_sb, u32 pi_index,
      enum ecore_coalescing_fsm coalescing_fsm,
      u8 timeset)
{
 _ecore_int_cau_conf_pi(p_hwfn, p_ptt, p_sb->igu_sb_id,
          pi_index, coalescing_fsm, timeset);
}
