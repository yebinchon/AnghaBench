
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int DMAE_CMD_C_DST_SHIFT ;
 int DMAE_CMD_C_TYPE_ENABLE ;

uint32_t
bxe_dmae_opcode_add_comp(uint32_t opcode,
                         uint8_t comp_type)
{
    return (opcode | ((comp_type << DMAE_CMD_C_DST_SHIFT) |
                      DMAE_CMD_C_TYPE_ENABLE));
}
