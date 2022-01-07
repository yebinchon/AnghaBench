
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ value; } ;
typedef TYPE_1__ linker_symval_t ;
typedef int linker_file_t ;
typedef int c_linker_sym_t ;


 int ESRCH ;
 int M_LINKER ;
 int M_WAITOK ;
 int free (char*,int ) ;
 int link_elf_lookup_symbol (int ,char*,int *) ;
 int link_elf_symbol_values (int ,int ,TYPE_1__*) ;
 char* malloc (int,int ,int ) ;
 int snprintf (char*,int,char*,char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int
link_elf_lookup_set(linker_file_t lf, const char *name,
    void ***startp, void ***stopp, int *countp)
{
 c_linker_sym_t sym;
 linker_symval_t symval;
 char *setsym;
 void **start, **stop;
 int len, error = 0, count;

 len = strlen(name) + sizeof("__start_set_");
 setsym = malloc(len, M_LINKER, M_WAITOK);


 snprintf(setsym, len, "%s%s", "__start_set_", name);
 error = link_elf_lookup_symbol(lf, setsym, &sym);
 if (error != 0)
  goto out;
 link_elf_symbol_values(lf, sym, &symval);
 if (symval.value == 0) {
  error = ESRCH;
  goto out;
 }
 start = (void **)symval.value;


 snprintf(setsym, len, "%s%s", "__stop_set_", name);
 error = link_elf_lookup_symbol(lf, setsym, &sym);
 if (error != 0)
  goto out;
 link_elf_symbol_values(lf, sym, &symval);
 if (symval.value == 0) {
  error = ESRCH;
  goto out;
 }
 stop = (void **)symval.value;


 count = stop - start;


 if (startp != ((void*)0))
  *startp = start;
 if (stopp != ((void*)0))
  *stopp = stop;
 if (countp != ((void*)0))
  *countp = count;

out:
 free(setsym, M_LINKER);
 return (error);
}
