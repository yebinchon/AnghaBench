
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int64_t ;
typedef size_t elf_member_t ;
struct TYPE_3__ {int* e_ident; } ;
typedef TYPE_1__ Elf32_Ehdr ;


 size_t EI_CLASS ;
 size_t EI_DATA ;






 scalar_t__ be32dec (void*) ;
 int * elf32_offsets ;
 int * elf64_offsets ;
 int errx (int,char*) ;
 scalar_t__ le32dec (void*) ;

__attribute__((used)) static u_int64_t
elf_get_word(Elf32_Ehdr *e, void *base, elf_member_t member)
{
 u_int64_t val;

 val = 0;
 switch (e->e_ident[EI_CLASS]) {
 case 133:
  base = (char *)base + elf32_offsets[member];
  switch (e->e_ident[EI_DATA]) {
  case 129:
   val = be32dec(base);
   break;
  case 130:
   val = le32dec(base);
   break;
  case 128:
   errx(1, "invalid data format");
  }
  break;
 case 132:
  base = (char *)base + elf64_offsets[member];
  switch (e->e_ident[EI_DATA]) {
  case 129:
   val = be32dec(base);
   break;
  case 130:
   val = le32dec(base);
   break;
  case 128:
   errx(1, "invalid data format");
  }
  break;
 case 131:
  errx(1, "invalid class");
 }

 return val;
}
