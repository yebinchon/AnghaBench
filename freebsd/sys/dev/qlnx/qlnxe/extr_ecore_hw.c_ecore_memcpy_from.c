
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef scalar_t__ osal_size_t ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ,void*,int ,unsigned long) ;
 int ECORE_MSG_HW ;
 int ecore_memcpy_hw (struct ecore_hwfn*,struct ecore_ptt*,void*,int ,scalar_t__,int) ;

void ecore_memcpy_from(struct ecore_hwfn *p_hwfn,
         struct ecore_ptt *p_ptt,
         void *dest, u32 hw_addr, osal_size_t n)
{
 DP_VERBOSE(p_hwfn, ECORE_MSG_HW,
     "hw_addr 0x%x, dest %p hw_addr 0x%x, size %lu\n",
     hw_addr, dest, hw_addr, (unsigned long) n);

 ecore_memcpy_hw(p_hwfn, p_ptt, dest, hw_addr, n, 0);
}
