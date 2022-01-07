
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;


 int DBG_REG_DBG_BLOCK_ON ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int) ;

__attribute__((used)) static void ecore_bus_enable_dbg_block(struct ecore_hwfn *p_hwfn,
            struct ecore_ptt *p_ptt,
            bool enable)
{
 ecore_wr(p_hwfn, p_ptt, DBG_REG_DBG_BLOCK_ON, enable ? 1 : 0);
}
