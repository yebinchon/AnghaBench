
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int linker_file_t ;
typedef TYPE_1__* elf_file_t ;
typedef int * caddr_t ;
struct TYPE_2__ {long ddbstrcnt; int * ddbstrtab; } ;



__attribute__((used)) static long
link_elf_strtab_get(linker_file_t lf, caddr_t *strtab)
{
    elf_file_t ef = (elf_file_t)lf;

    *strtab = ef->ddbstrtab;

    if (*strtab == ((void*)0))
        return (0);

    return (ef->ddbstrcnt);
}
