
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int elf_file_t ;


 int elf_lookup ;
 int elf_reloc ;
 int relocate_file1 (int ,int ,int ,int) ;

__attribute__((used)) static int
relocate_file(elf_file_t ef)
{
 int error;

 error = relocate_file1(ef, elf_lookup, elf_reloc, 0);
 if (error == 0)
  error = relocate_file1(ef, elf_lookup, elf_reloc, 1);
 return (error);
}
