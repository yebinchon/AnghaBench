
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int linker_file_t ;
typedef TYPE_1__* elf_file_t ;
struct TYPE_4__ {scalar_t__ st_shndx; scalar_t__ st_value; int st_name; int st_info; } ;
struct TYPE_3__ {scalar_t__ nchains; char* strtab; scalar_t__ address; TYPE_2__* symtab; } ;
typedef TYPE_2__ Elf_Sym ;
typedef scalar_t__ Elf_Size ;
typedef scalar_t__ Elf_Addr ;


 int EINVAL ;
 scalar_t__ ELF_ST_BIND (int ) ;
 scalar_t__ SHN_UNDEF ;
 scalar_t__ STB_LOCAL ;
 scalar_t__ STB_WEAK ;
 scalar_t__ elf_set_find (int *,scalar_t__,scalar_t__*,scalar_t__*) ;
 scalar_t__ linker_file_lookup_symbol (int ,char const*,int) ;
 int set_pcpu_list ;
 int set_vnet_list ;

__attribute__((used)) static int
elf_lookup(linker_file_t lf, Elf_Size symidx, int deps, Elf_Addr *res)
{
 elf_file_t ef = (elf_file_t)lf;
 const Elf_Sym *sym;
 const char *symbol;
 Elf_Addr addr, start, base;


 if (symidx >= ef->nchains) {
  *res = 0;
  return (EINVAL);
 }

 sym = ef->symtab + symidx;





 if (ELF_ST_BIND(sym->st_info) == STB_LOCAL) {

  if (sym->st_shndx == SHN_UNDEF || sym->st_value == 0) {
   *res = 0;
   return (EINVAL);
  }
  *res = ((Elf_Addr)ef->address + sym->st_value);
  return (0);
 }
 symbol = ef->strtab + sym->st_name;


 if (*symbol == 0) {
  *res = 0;
  return (EINVAL);
 }

 addr = ((Elf_Addr)linker_file_lookup_symbol(lf, symbol, deps));
 if (addr == 0 && ELF_ST_BIND(sym->st_info) != STB_WEAK) {
  *res = 0;
  return (EINVAL);
 }

 if (elf_set_find(&set_pcpu_list, addr, &start, &base))
  addr = addr - start + base;




 *res = addr;
 return (0);
}
