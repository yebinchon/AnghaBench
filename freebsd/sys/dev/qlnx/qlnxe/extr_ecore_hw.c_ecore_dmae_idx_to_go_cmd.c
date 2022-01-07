
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int DMAE_REG_GO_C0 ;
 int DMAE_REG_GO_C31 ;
 int OSAL_BUILD_BUG_ON (int) ;

__attribute__((used)) static u32 ecore_dmae_idx_to_go_cmd(u8 idx)
{
 OSAL_BUILD_BUG_ON((DMAE_REG_GO_C31 - DMAE_REG_GO_C0) !=
     31 * 4);


 return DMAE_REG_GO_C0 + (idx << 2);
}
