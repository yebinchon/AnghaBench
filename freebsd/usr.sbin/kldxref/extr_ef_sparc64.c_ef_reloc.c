
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int w ;
typedef int u_char ;
struct elf_file {int dummy; } ;
struct TYPE_2__ {int r_info; scalar_t__ r_offset; scalar_t__ r_addend; } ;
typedef scalar_t__ Elf_Size ;
typedef TYPE_1__ Elf_Rela ;
typedef scalar_t__ Elf_Off ;



 scalar_t__ ELF_R_TYPE (int ) ;

 int memcpy (int *,scalar_t__*,int) ;
 int warnx (char*,unsigned int) ;

int
ef_reloc(struct elf_file *ef, const void *reldata, int reltype, Elf_Off relbase,
    Elf_Off dataoff, size_t len, void *dest)
{
 const Elf_Rela *a;
 Elf_Size w;

 switch (reltype) {
 case 129:
  a = reldata;
  if (relbase + a->r_offset >= dataoff && relbase + a->r_offset <
      dataoff + len) {
   switch (ELF_R_TYPE(a->r_info)) {
   case 128:
    w = a->r_addend + relbase;
    memcpy((u_char *)dest + (relbase + a->r_offset -
        dataoff), &w, sizeof(w));
    break;
   default:
    warnx("unhandled relocation type %u",
        (unsigned int)ELF_R_TYPE(a->r_info));
    break;
   }
  }
  break;
 }
 return (0);
}
