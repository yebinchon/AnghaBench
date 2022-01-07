
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct mips_tmp_reloc {int ahl; int* where_hi16; } ;
typedef int linker_file_t ;
typedef int int16_t ;
typedef int (* elf_lookup_fn ) (int ,int,int,int*) ;
struct TYPE_4__ {int r_offset; int r_info; } ;
struct TYPE_3__ {int r_offset; int r_addend; int r_info; } ;
typedef int Elf_Word ;
typedef TYPE_1__ Elf_Rela ;
typedef TYPE_2__ Elf_Rel ;
typedef int Elf_Addr ;
typedef int Elf64_Addr ;
typedef int Elf32_Addr ;




 int ELF_R_SYM (int ) ;
 int ELF_R_TYPE (int ) ;
 int mips_tmp_reloc_add (int,int*) ;
 int mips_tmp_reloc_free (struct mips_tmp_reloc*) ;
 struct mips_tmp_reloc* mips_tmp_reloc_get () ;
 int panic (char*,int) ;
 int printf (char*,int) ;

__attribute__((used)) static int
elf_reloc_internal(linker_file_t lf, Elf_Addr relocbase, const void *data,
    int type, int local, elf_lookup_fn lookup)
{
 Elf32_Addr *where = (Elf32_Addr *)((void*)0);
 Elf_Addr addr;
 Elf_Addr addend = (Elf_Addr)0;
 Elf_Word rtype = (Elf_Word)0, symidx;
 struct mips_tmp_reloc *r;
 const Elf_Rel *rel = ((void*)0);
 const Elf_Rela *rela = ((void*)0);
 int error;


 static Elf_Addr last_ahl;

 switch (type) {
 case 137:
  rel = (const Elf_Rel *)data;
  where = (Elf32_Addr *) (relocbase + rel->r_offset);
  rtype = ELF_R_TYPE(rel->r_info);
  symidx = ELF_R_SYM(rel->r_info);
  switch (rtype) {
  case 133:
   addend = *(Elf64_Addr *)where;
   break;
  default:
   addend = *where;
   break;
  }

  break;
 case 136:
  rela = (const Elf_Rela *)data;
  where = (Elf32_Addr *) (relocbase + rela->r_offset);
  addend = rela->r_addend;
  rtype = ELF_R_TYPE(rela->r_info);
  symidx = ELF_R_SYM(rela->r_info);
  break;
 default:
  panic("unknown reloc type %d\n", type);
 }

 switch (rtype) {
 case 128:
  break;

 case 134:
  error = lookup(lf, symidx, 1, &addr);
  if (error != 0)
   return (-1);
  addr += addend;
  if (*where != addr)
   *where = (Elf32_Addr)addr;
  break;

 case 135:
  error = lookup(lf, symidx, 1, &addr);
  if (error != 0)
   return (-1);

  addend &= 0x03ffffff;



  if (rela == ((void*)0))
   addend <<= 2;

  addr += ((Elf_Addr)where & 0xf0000000) | addend;
  addr >>= 2;

  *where &= ~0x03ffffff;
  *where |= addr & 0x03ffffff;
  break;

 case 133:
  error = lookup(lf, symidx, 1, &addr);
  if (error != 0)
   return (-1);
  addr += addend;
  if (*(Elf64_Addr*)where != addr)
   *(Elf64_Addr*)where = addr;
  break;
 case 132:
  if (rela != ((void*)0)) {
   error = lookup(lf, symidx, 1, &addr);
   if (error != 0)
    return (-1);
   addr += addend;
   *where &= 0xffff0000;
   *where |= ((((long long) addr + 0x8000LL) >> 16) & 0xffff);
  } else {





   if (mips_tmp_reloc_add(addend << 16, where) == 0)
    return (-1);
   last_ahl = addend << 16;
  }
  break;

 case 129:
  if (rela != ((void*)0)) {
   error = lookup(lf, symidx, 1, &addr);
   if (error != 0)
    return (-1);
   addr += addend;
   *where &= 0xffff0000;
   *where |= addr & 0xffff;
  } else {
   Elf_Addr tmp_ahl;
   Elf_Addr tmp_addend;

   tmp_ahl = last_ahl + (int16_t) addend;
   error = lookup(lf, symidx, 1, &addr);
   if (error != 0)
    return (-1);

   tmp_addend = addend & 0xffff0000;


   tmp_addend |= (uint16_t)(tmp_ahl + addr);
   *where = tmp_addend;
   while ((r = mips_tmp_reloc_get()) != ((void*)0)) {
    Elf_Addr rahl;





    rahl = r->ahl;
    rahl += (int16_t) addend;

    tmp_addend = *(r->where_hi16);
    tmp_addend &= 0xffff0000;
    tmp_addend |= ((rahl + addr) -
        (int16_t)(rahl + addr)) >> 16;
    *(r->where_hi16) = tmp_addend;
    mips_tmp_reloc_free(r);
   }
  }

  break;

 case 131:
  error = lookup(lf, symidx, 1, &addr);
  if (error != 0)
   return (-1);
  addr += addend;
  *where &= 0xffff0000;
  *where |= (((long long)addr + 0x80008000LL) >> 32) & 0xffff;
  break;

 case 130:
  error = lookup(lf, symidx, 1, &addr);
  if (error != 0)
   return (-1);
  addr += addend;
  *where &= 0xffff0000;
  *where |= (((long long)addr + 0x800080008000LL) >> 48) & 0xffff;
  break;

 default:
  printf("kldload: unexpected relocation type %d\n",
   rtype);
  return (-1);
 }

 return(0);
}
