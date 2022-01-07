
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int linker_symval_t ;
typedef int c_linker_sym_t ;


 int linker_debug_symbol_values (int ,int *) ;

int
linker_ddb_symbol_values(c_linker_sym_t sym, linker_symval_t *symval)
{

 return (linker_debug_symbol_values(sym, symval));
}
