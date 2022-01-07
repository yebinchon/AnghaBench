
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int Elf32_Ehdr ;


 int E_SHNUM ;
 int SH_SIZE ;
 scalar_t__ elf_get_quarter (int *,int *,int ) ;
 scalar_t__ elf_get_word (int *,char*,int ) ;

__attribute__((used)) static uint64_t
elf_get_shnum(Elf32_Ehdr *e, void *sh)
{
 uint64_t shnum;

 shnum = elf_get_quarter(e, e, E_SHNUM);
 if (shnum == 0)
  shnum = elf_get_word(e, (char *)sh, SH_SIZE);
 return shnum;
}
