
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i40e_aq_desc {void* flags; void* opcode; } ;


 void* CPU_TO_LE16 (int ) ;
 int I40E_AQ_FLAG_SI ;
 int I40E_NONDMA_MEM ;
 int i40e_memset (void*,int ,int,int ) ;

void i40e_fill_default_direct_cmd_desc(struct i40e_aq_desc *desc,
           u16 opcode)
{

 i40e_memset((void *)desc, 0, sizeof(struct i40e_aq_desc),
      I40E_NONDMA_MEM);
 desc->opcode = CPU_TO_LE16(opcode);
 desc->flags = CPU_TO_LE16(I40E_AQ_FLAG_SI);
}
