
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int linker_file_t ;
typedef int (* elf_lookup_fn ) (int ,int,int,scalar_t__*) ;
struct TYPE_2__ {int r_info; scalar_t__ r_addend; scalar_t__ r_offset; } ;
typedef int Elf_Word ;
typedef TYPE_1__ Elf_Rela ;
typedef scalar_t__ Elf_Addr ;




 int ELF_R_SYM (int ) ;
 int ELF_R_TYPE (int ) ;




 scalar_t__ elf_relocaddr (int ,scalar_t__) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int panic (char*,...) ;
 int printf (char*,int) ;

__attribute__((used)) static int
elf_reloc_internal(linker_file_t lf, Elf_Addr relocbase, const void *data,
    int type, int local, elf_lookup_fn lookup)
{
 Elf_Addr *where;
 Elf_Addr addr;
 Elf_Addr addend;
 Elf_Word rtype, symidx;
 const Elf_Rela *rela;
 int error;

 switch (type) {
 case 133:
  panic("PPC only supports RELA relocations");
  break;
 case 132:
  rela = (const Elf_Rela *)data;
  where = (Elf_Addr *) (relocbase + rela->r_offset);
  addend = rela->r_addend;
  rtype = ELF_R_TYPE(rela->r_info);
  symidx = ELF_R_SYM(rela->r_info);
  break;
 default:
  panic("elf_reloc: unknown relocation mode %d\n", type);
 }

 switch (rtype) {

 case 129:
  break;

 case 131:
  error = lookup(lf, symidx, 1, &addr);
  if (error != 0)
   return -1;
  addr += addend;
  *where = addr;
  break;

 case 128:
  *where = elf_relocaddr(lf, relocbase + addend);
  break;

 case 130:
  lookup(lf, symidx, 1, &addr);

  memcpy(where, (Elf_Addr *)addr, 3*sizeof(Elf_Addr));



  __asm __volatile("dcbst 0,%0; sync" :: "r"(where) : "memory");
  break;

 default:
  printf("kldload: unexpected relocation type %d\n",
      (int) rtype);
  return -1;
 }
 return(0);
}
