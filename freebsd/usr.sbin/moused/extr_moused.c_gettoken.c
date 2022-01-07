
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * name; } ;
typedef TYPE_1__ symtab_t ;


 scalar_t__ strncmp (int *,char const*,int) ;

__attribute__((used)) static symtab_t *
gettoken(symtab_t *tab, const char *s, int len)
{
    int i;

    for (i = 0; tab[i].name != ((void*)0); ++i) {
 if (strncmp(tab[i].name, s, len) == 0)
     break;
    }
    return (&tab[i]);
}
