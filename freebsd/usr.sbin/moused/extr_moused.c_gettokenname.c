
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; int val; } ;
typedef TYPE_1__ symtab_t ;



__attribute__((used)) static const char *
gettokenname(symtab_t *tab, int val)
{
    static const char unknown[] = "unknown";
    int i;

    for (i = 0; tab[i].name != ((void*)0); ++i) {
 if (tab[i].val == val)
     return (tab[i].name);
    }
    return (unknown);
}
