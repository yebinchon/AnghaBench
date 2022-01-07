
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf_Size ;


 scalar_t__ ELF_R_TYPE (int ) ;
 scalar_t__ R_386_IRELATIVE ;

bool
elf_is_ifunc_reloc(Elf_Size r_info)
{

 return (ELF_R_TYPE(r_info) == R_386_IRELATIVE);
}
