
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uintmax_t ;
struct TYPE_3__ {int p_flags; scalar_t__ p_filesz; scalar_t__ p_memsz; } ;
typedef TYPE_1__ Elf_Phdr ;


 int PF_W ;
 int printf (char*,...) ;

__attribute__((used)) static void
ef_print_phdr(Elf_Phdr *phdr)
{

 if ((phdr->p_flags & PF_W) == 0) {
  printf("text=0x%jx ", (uintmax_t)phdr->p_filesz);
 } else {
  printf("data=0x%jx", (uintmax_t)phdr->p_filesz);
  if (phdr->p_filesz < phdr->p_memsz)
   printf("+0x%jx",
       (uintmax_t)(phdr->p_memsz - phdr->p_filesz));
  printf(" ");
 }
}
