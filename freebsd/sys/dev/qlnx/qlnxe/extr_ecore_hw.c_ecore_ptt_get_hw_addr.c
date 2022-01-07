
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int offset; } ;
struct ecore_ptt {TYPE_1__ pxp; } ;


 int OSAL_LE32_TO_CPU (int ) ;

__attribute__((used)) static u32 ecore_ptt_get_hw_addr(struct ecore_ptt *p_ptt)
{

 return OSAL_LE32_TO_CPU(p_ptt->pxp.offset) << 2;
}
