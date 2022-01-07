
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int linker_symval_t ;
typedef int (* linker_function_nameval_callback_t ) (int ,int,int *,void*) ;
typedef int linker_file_t ;
typedef TYPE_1__* elf_file_t ;
typedef int c_linker_sym_t ;
struct TYPE_4__ {scalar_t__ st_value; int st_info; } ;
struct TYPE_3__ {int ddbsymcnt; TYPE_2__* ddbsymtab; } ;
typedef TYPE_2__ Elf_Sym ;


 scalar_t__ ELF_ST_TYPE (int ) ;
 scalar_t__ STT_FUNC ;
 scalar_t__ STT_GNU_IFUNC ;
 int link_elf_symbol_values (int ,int ,int *) ;

__attribute__((used)) static int
link_elf_each_function_nameval(linker_file_t file,
    linker_function_nameval_callback_t callback, void *opaque)
{
 linker_symval_t symval;
 elf_file_t ef = (elf_file_t)file;
 const Elf_Sym* symp;
 int i, error;


 for (i = 0, symp = ef->ddbsymtab; i < ef->ddbsymcnt; i++, symp++) {
  if (symp->st_value != 0 &&
      (ELF_ST_TYPE(symp->st_info) == STT_FUNC ||
      ELF_ST_TYPE(symp->st_info) == STT_GNU_IFUNC)) {
   error = link_elf_symbol_values(file,
       (c_linker_sym_t)symp, &symval);
   if (error)
    return (error);
   error = callback(file, i, &symval, opaque);
   if (error)
    return (error);
  }
 }
 return (0);
}
