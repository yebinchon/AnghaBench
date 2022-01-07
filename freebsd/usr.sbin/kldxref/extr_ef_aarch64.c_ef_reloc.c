
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct elf_file {int dummy; } ;
struct TYPE_2__ {int r_info; scalar_t__ r_addend; scalar_t__ r_offset; } ;
typedef int Elf_Size ;
typedef TYPE_1__ Elf_Rela ;
typedef scalar_t__ Elf_Off ;
typedef scalar_t__ Elf_Addr ;


 int EF_RELOC_RELA ;
 int EINVAL ;
 int ELF_R_TYPE (int ) ;


 int warnx (char*,int) ;

int
ef_reloc(struct elf_file *ef, const void *reldata, int reltype, Elf_Off relbase,
    Elf_Off dataoff, size_t len, void *dest)
{
 Elf_Addr *where, addend;
 Elf_Size rtype;
 const Elf_Rela *rela;

 if (reltype != EF_RELOC_RELA)
  return (EINVAL);

 rela = (const Elf_Rela *)reldata;
 where = (Elf_Addr *) ((Elf_Off)dest - dataoff + rela->r_offset);
 addend = rela->r_addend;
 rtype = ELF_R_TYPE(rela->r_info);

 if ((char *)where < (char *)dest || (char *)where >= (char *)dest + len)
  return (0);

 switch(rtype) {
 case 128:
  *where = relbase + addend;
  break;
 case 129:
  break;
 default:
  warnx("unhandled relocation type %lu", rtype);
  break;
 }
 return (0);
}
