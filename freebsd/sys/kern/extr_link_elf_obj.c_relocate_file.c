
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef TYPE_3__* elf_file_t ;
struct TYPE_18__ {int r_info; } ;
struct TYPE_17__ {int st_info; } ;
struct TYPE_13__ {int filename; } ;
struct TYPE_16__ {int nreltab; scalar_t__ ddbsymcnt; int nrelatab; TYPE_10__ lf; TYPE_4__* ddbsymtab; TYPE_2__* relatab; TYPE_1__* reltab; } ;
struct TYPE_15__ {int nrela; int sec; TYPE_5__* rela; } ;
struct TYPE_14__ {int nrel; int sec; TYPE_5__* rel; } ;
typedef TYPE_4__ Elf_Sym ;
typedef scalar_t__ Elf_Size ;
typedef TYPE_5__ Elf_Rela ;
typedef TYPE_5__ Elf_Rel ;
typedef scalar_t__ Elf_Addr ;


 int ELF_RELOC_REL ;
 int ELF_RELOC_RELA ;
 scalar_t__ ELF_R_SYM (int ) ;
 scalar_t__ ELF_ST_BIND (int ) ;
 int ENOENT ;
 int ENOEXEC ;
 scalar_t__ STB_LOCAL ;
 int elf_obj_cleanup_globals_cache (TYPE_3__*) ;
 int elf_obj_lookup ;
 scalar_t__ elf_reloc (TYPE_10__*,scalar_t__,TYPE_5__ const*,int ,int ) ;
 scalar_t__ findbase (TYPE_3__*,int ) ;
 int link_elf_error (int ,char*) ;
 int printf (char*,char const*) ;
 char* symbol_name (TYPE_3__*,int ) ;

__attribute__((used)) static int
relocate_file(elf_file_t ef)
{
 const Elf_Rel *rellim;
 const Elf_Rel *rel;
 const Elf_Rela *relalim;
 const Elf_Rela *rela;
 const char *symname;
 const Elf_Sym *sym;
 int i;
 Elf_Size symidx;
 Elf_Addr base;



 for (i = 0; i < ef->nreltab; i++) {
  rel = ef->reltab[i].rel;
  if (rel == ((void*)0)) {
   link_elf_error(ef->lf.filename, "lost a reltab!");
   return (ENOEXEC);
  }
  rellim = rel + ef->reltab[i].nrel;
  base = findbase(ef, ef->reltab[i].sec);
  if (base == 0) {
   link_elf_error(ef->lf.filename, "lost base for reltab");
   return (ENOEXEC);
  }
  for ( ; rel < rellim; rel++) {
   symidx = ELF_R_SYM(rel->r_info);
   if (symidx >= ef->ddbsymcnt)
    continue;
   sym = ef->ddbsymtab + symidx;

   if (ELF_ST_BIND(sym->st_info) == STB_LOCAL)
    continue;
   if (elf_reloc(&ef->lf, base, rel, ELF_RELOC_REL,
       elf_obj_lookup)) {
    symname = symbol_name(ef, rel->r_info);
    printf("link_elf_obj: symbol %s undefined\n",
        symname);
    return (ENOENT);
   }
  }
 }


 for (i = 0; i < ef->nrelatab; i++) {
  rela = ef->relatab[i].rela;
  if (rela == ((void*)0)) {
   link_elf_error(ef->lf.filename, "lost a relatab!");
   return (ENOEXEC);
  }
  relalim = rela + ef->relatab[i].nrela;
  base = findbase(ef, ef->relatab[i].sec);
  if (base == 0) {
   link_elf_error(ef->lf.filename,
       "lost base for relatab");
   return (ENOEXEC);
  }
  for ( ; rela < relalim; rela++) {
   symidx = ELF_R_SYM(rela->r_info);
   if (symidx >= ef->ddbsymcnt)
    continue;
   sym = ef->ddbsymtab + symidx;

   if (ELF_ST_BIND(sym->st_info) == STB_LOCAL)
    continue;
   if (elf_reloc(&ef->lf, base, rela, ELF_RELOC_RELA,
       elf_obj_lookup)) {
    symname = symbol_name(ef, rela->r_info);
    printf("link_elf_obj: symbol %s undefined\n",
        symname);
    return (ENOENT);
   }
  }
 }






 elf_obj_cleanup_globals_cache(ef);

 return (0);
}
