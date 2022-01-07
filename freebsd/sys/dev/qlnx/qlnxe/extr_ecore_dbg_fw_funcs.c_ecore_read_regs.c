
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;


 int DWORDS_TO_BYTES (size_t) ;
 size_t ecore_rd (struct ecore_hwfn*,struct ecore_ptt*,int ) ;

void ecore_read_regs(struct ecore_hwfn *p_hwfn,
      struct ecore_ptt *p_ptt,
      u32 *buf,
      u32 addr,
      u32 len)
{
 u32 i;

 for (i = 0; i < len; i++)
  buf[i] = ecore_rd(p_hwfn, p_ptt, DWORDS_TO_BYTES(addr + i));
}
