
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int linker_file_t ;
typedef TYPE_4__* elf_file_t ;
struct TYPE_16__ {int r_info; } ;
struct TYPE_15__ {int st_info; } ;
struct TYPE_13__ {int filename; } ;
struct TYPE_14__ {int nreltab; scalar_t__ ddbsymcnt; int nrelatab; TYPE_5__* ddbsymtab; TYPE_3__ lf; TYPE_2__* relatab; TYPE_1__* reltab; } ;
struct TYPE_12__ {int nrela; int sec; TYPE_6__* rela; } ;
struct TYPE_11__ {int nrel; int sec; TYPE_6__* rel; } ;
typedef TYPE_5__ Elf_Sym ;
typedef scalar_t__ Elf_Size ;
typedef TYPE_6__ Elf_Rela ;
typedef TYPE_6__ Elf_Rel ;
typedef scalar_t__ Elf_Addr ;


 int ELF_RELOC_REL ;
 int ELF_RELOC_RELA ;
 scalar_t__ ELF_R_SYM (int ) ;
 scalar_t__ ELF_ST_BIND (int ) ;
 scalar_t__ ELF_ST_TYPE (int ) ;
 int ENOEXEC ;
 scalar_t__ STB_LOCAL ;
 scalar_t__ STT_GNU_IFUNC ;
 scalar_t__ elf_is_ifunc_reloc (int ) ;
 int elf_obj_lookup ;
 int elf_reloc_local (int ,scalar_t__,TYPE_6__ const*,int ,int ) ;
 scalar_t__ findbase (TYPE_4__*,int ) ;
 int link_elf_error (int ,char*) ;
 int link_elf_fix_link_set (TYPE_4__*) ;

__attribute__((used)) static int
link_elf_reloc_local(linker_file_t lf, bool ifuncs)
{
 elf_file_t ef = (elf_file_t)lf;
 const Elf_Rel *rellim;
 const Elf_Rel *rel;
 const Elf_Rela *relalim;
 const Elf_Rela *rela;
 const Elf_Sym *sym;
 Elf_Addr base;
 int i;
 Elf_Size symidx;

 link_elf_fix_link_set(ef);


 for (i = 0; i < ef->nreltab; i++) {
  rel = ef->reltab[i].rel;
  if (rel == ((void*)0)) {
   link_elf_error(ef->lf.filename, "lost a reltab");
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

   if (ELF_ST_BIND(sym->st_info) != STB_LOCAL)
    continue;
   if ((ELF_ST_TYPE(sym->st_info) == STT_GNU_IFUNC ||
       elf_is_ifunc_reloc(rel->r_info)) == ifuncs)
    elf_reloc_local(lf, base, rel, ELF_RELOC_REL,
        elf_obj_lookup);
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
   link_elf_error(ef->lf.filename, "lost base for reltab");
   return (ENOEXEC);
  }
  for ( ; rela < relalim; rela++) {
   symidx = ELF_R_SYM(rela->r_info);
   if (symidx >= ef->ddbsymcnt)
    continue;
   sym = ef->ddbsymtab + symidx;

   if (ELF_ST_BIND(sym->st_info) != STB_LOCAL)
    continue;
   if ((ELF_ST_TYPE(sym->st_info) == STT_GNU_IFUNC ||
       elf_is_ifunc_reloc(rela->r_info)) == ifuncs)
    elf_reloc_local(lf, base, rela, ELF_RELOC_RELA,
        elf_obj_lookup);
  }
 }
 return (0);
}
