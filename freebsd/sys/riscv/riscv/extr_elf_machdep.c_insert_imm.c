
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int extract_bits (int ,int,int) ;
 int insert_bits (int ,int ,int,int) ;

__attribute__((used)) static uint32_t
insert_imm(uint32_t insn, uint32_t imm, int imm_msb, int imm_lsb,
    int insn_lsb)
{
 int insn_msb;
 uint32_t v;

 v = extract_bits(imm, imm_msb, imm_lsb);
 insn_msb = (imm_msb - imm_lsb) + insn_lsb;

 return (insert_bits(insn, v, insn_msb, insn_lsb));
}
