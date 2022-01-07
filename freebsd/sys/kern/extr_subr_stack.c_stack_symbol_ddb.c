
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
struct TYPE_3__ {char* name; } ;
typedef TYPE_1__ linker_symval_t ;
typedef int caddr_t ;
typedef int c_linker_sym_t ;


 int ENOENT ;
 scalar_t__ linker_ddb_search_symbol (int ,int *,long*) ;
 scalar_t__ linker_ddb_symbol_values (int ,TYPE_1__*) ;

__attribute__((used)) static int
stack_symbol_ddb(vm_offset_t pc, const char **name, long *offset)
{
 linker_symval_t symval;
 c_linker_sym_t sym;

 if (linker_ddb_search_symbol((caddr_t)pc, &sym, offset) != 0)
  goto out;
 if (linker_ddb_symbol_values(sym, &symval) != 0)
  goto out;
 if (symval.name != ((void*)0)) {
  *name = symval.name;
  return (0);
 }
 out:
 *offset = 0;
 *name = "??";
 return (ENOENT);
}
