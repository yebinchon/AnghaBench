
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ value; } ;
typedef TYPE_1__ linker_symval_t ;
typedef void* linker_file_t ;
typedef int c_linker_sym_t ;


 int GCOV_PREFIX ;
 int LINKER_LOOKUP_SYMBOL (void*,char const*,int *) ;
 int LINKER_SYMBOL_VALUES (void*,int ,TYPE_1__*) ;
 int * strstr (char const*,int ) ;

__attribute__((used)) static int
gcov_invoke_ctor(const char *name, void *arg)
{
 void (*ctor)(void);
 c_linker_sym_t sym;
 linker_symval_t symval;
 linker_file_t lf;

 if (strstr(name, GCOV_PREFIX) == ((void*)0))
  return (0);
 lf = arg;
 LINKER_LOOKUP_SYMBOL(lf, name, &sym);
 LINKER_SYMBOL_VALUES(lf, sym, &symval);
 ctor = (void *)symval.value;
 ctor();
 return (0);
}
