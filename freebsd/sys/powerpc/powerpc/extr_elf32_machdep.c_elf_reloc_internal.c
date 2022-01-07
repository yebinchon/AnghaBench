
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int linker_file_t ;
typedef int (* elf_lookup_fn ) (int ,int,int,int*) ;
struct TYPE_2__ {int r_addend; int r_info; int r_offset; } ;
typedef int Elf_Word ;
typedef TYPE_1__ Elf_Rela ;
typedef int Elf_Half ;
typedef int Elf_Addr ;




 int ELF_R_SYM (int ) ;
 int ELF_R_TYPE (int ) ;





 int elf_relocaddr (int ,int) ;
 int panic (char*,...) ;
 int printf (char*,int) ;

__attribute__((used)) static int
elf_reloc_internal(linker_file_t lf, Elf_Addr relocbase, const void *data,
    int type, int local, elf_lookup_fn lookup)
{
 Elf_Addr *where;
 Elf_Half *hwhere;
 Elf_Addr addr;
 Elf_Addr addend;
 Elf_Word rtype, symidx;
 const Elf_Rela *rela;
 int error;

 switch (type) {
 case 134:
  panic("PPC only supports RELA relocations");
  break;
 case 133:
  rela = (const Elf_Rela *)data;
  where = (Elf_Addr *) ((uintptr_t)relocbase + rela->r_offset);
  hwhere = (Elf_Half *) ((uintptr_t)relocbase + rela->r_offset);
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

 case 130:
  error = lookup(lf, symidx, 1, &addr);
  if (error != 0)
   return -1;
  *where = elf_relocaddr(lf, addr + addend);
   break;

 case 131:
  error = lookup(lf, symidx, 1, &addr);
  if (error != 0)
   return -1;





  if (addr > relocbase && addr <= (relocbase + addend))
   addr = relocbase;
  addr = elf_relocaddr(lf, addr + addend);
  *hwhere = addr & 0xffff;
  break;

 case 132:
  error = lookup(lf, symidx, 1, &addr);
  if (error != 0)
   return -1;





  if (addr > relocbase && addr <= (relocbase + addend))
   addr = relocbase;
  addr = elf_relocaddr(lf, addr + addend);
  *hwhere = ((addr >> 16) + ((addr & 0x8000) ? 1 : 0))
      & 0xffff;
  break;

 case 128:
  *where = elf_relocaddr(lf, relocbase + addend);
  break;

 default:
  printf("kldload: unexpected relocation type %d\n",
      (int) rtype);
  return -1;
 }
 return(0);
}
