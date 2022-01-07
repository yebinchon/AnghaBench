
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ u_int64_t ;
typedef size_t elf_member_t ;
struct TYPE_3__ {int* e_ident; } ;
typedef TYPE_1__ Elf32_Ehdr ;


 size_t EI_CLASS ;



 size_t* elf32_offsets ;
 size_t* elf64_offsets ;
 int errx (int,char*) ;

__attribute__((used)) static u_int64_t
elf_get_byte(Elf32_Ehdr *e, void *base, elf_member_t member)
{
 u_int64_t val;

 val = 0;
 switch (e->e_ident[EI_CLASS]) {
 case 130:
  val = ((uint8_t *)base)[elf32_offsets[member]];
  break;
 case 129:
  val = ((uint8_t *)base)[elf64_offsets[member]];
  break;
 case 128:
  errx(1, "invalid class");
 }

 return val;
}
