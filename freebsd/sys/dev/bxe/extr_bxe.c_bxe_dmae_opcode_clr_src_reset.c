
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int DMAE_CMD_SRC_RESET ;

uint32_t
bxe_dmae_opcode_clr_src_reset(uint32_t opcode)
{
    return (opcode & ~DMAE_CMD_SRC_RESET);
}
