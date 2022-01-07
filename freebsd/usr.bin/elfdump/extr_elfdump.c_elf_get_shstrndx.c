
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int Elf32_Ehdr ;


 int E_SHSTRNDX ;
 scalar_t__ SHN_XINDEX ;
 int SH_LINK ;
 scalar_t__ elf_get_quarter (int *,int *,int ) ;
 scalar_t__ elf_get_word (int *,char*,int ) ;

__attribute__((used)) static uint64_t
elf_get_shstrndx(Elf32_Ehdr *e, void *sh)
{
 uint64_t shstrndx;

 shstrndx = elf_get_quarter(e, e, E_SHSTRNDX);
 if (shstrndx == SHN_XINDEX)
  shstrndx = elf_get_word(e, (char *)sh, SH_LINK);
 return shstrndx;
}
