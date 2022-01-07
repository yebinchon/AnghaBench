
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;


 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void ecore_init_fill(struct ecore_hwfn *p_hwfn,
       struct ecore_ptt *p_ptt,
       u32 addr, u32 fill, u32 fill_count)
{
 u32 i;

 for (i = 0; i < fill_count; i++, addr += sizeof(u32))
  ecore_wr(p_hwfn, p_ptt, addr, fill);
}
