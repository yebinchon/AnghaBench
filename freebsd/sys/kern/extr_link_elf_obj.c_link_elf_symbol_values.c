
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; scalar_t__ value; scalar_t__ name; } ;
typedef TYPE_1__ linker_symval_t ;
typedef scalar_t__ linker_file_t ;
typedef TYPE_2__* elf_file_t ;
typedef scalar_t__ caddr_t ;
typedef scalar_t__ c_linker_sym_t ;
struct TYPE_7__ {int st_size; int st_info; scalar_t__ st_value; scalar_t__ st_name; } ;
struct TYPE_6__ {int ddbsymcnt; scalar_t__ ddbstrtab; TYPE_3__ const* ddbsymtab; } ;
typedef TYPE_3__ Elf_Sym ;


 scalar_t__ ELF_ST_TYPE (int ) ;
 int ENOENT ;
 scalar_t__ STT_GNU_IFUNC ;
 scalar_t__ stub1 () ;

__attribute__((used)) static int
link_elf_symbol_values(linker_file_t lf, c_linker_sym_t sym,
    linker_symval_t *symval)
{
 elf_file_t ef;
 const Elf_Sym *es;
 caddr_t val;

 ef = (elf_file_t) lf;
 es = (const Elf_Sym*) sym;
 val = (caddr_t)es->st_value;
 if (es >= ef->ddbsymtab && es < (ef->ddbsymtab + ef->ddbsymcnt)) {
  symval->name = ef->ddbstrtab + es->st_name;
  val = (caddr_t)es->st_value;
  if (ELF_ST_TYPE(es->st_info) == STT_GNU_IFUNC)
   val = ((caddr_t (*)(void))val)();
  symval->value = val;
  symval->size = es->st_size;
  return 0;
 }
 return ENOENT;
}
