
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int elf_file_t ;
struct TYPE_3__ {long st_value; } ;
typedef TYPE_1__ Elf_Sym ;


 int ef_lookup_symbol (int ,char*,TYPE_1__**) ;
 int errno ;
 int free (char*) ;
 char* malloc (int) ;
 int snprintf (char*,int,char*,char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int
ef_lookup_set(elf_file_t ef, const char *name, long *startp, long *stopp,
    long *countp)
{
 Elf_Sym *sym;
 char *setsym;
 int error, len;

 len = strlen(name) + sizeof("__start_set_");
 setsym = malloc(len);
 if (setsym == ((void*)0))
  return (errno);


 snprintf(setsym, len, "%s%s", "__start_set_", name);
 error = ef_lookup_symbol(ef, setsym, &sym);
 if (error != 0)
  goto out;
 *startp = sym->st_value;


 snprintf(setsym, len, "%s%s", "__stop_set_", name);
 error = ef_lookup_symbol(ef, setsym, &sym);
 if (error != 0)
  goto out;
 *stopp = sym->st_value;


 *countp = (*stopp - *startp) / sizeof(void *);

out:
 free(setsym);
 return (error);
}
