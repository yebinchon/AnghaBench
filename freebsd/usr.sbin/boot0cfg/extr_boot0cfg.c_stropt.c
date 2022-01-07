
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ def; int tok; } ;


 int err (int,int *) ;
 int errx (int,char*,char const*) ;
 int free (char*) ;
 int nopt ;
 TYPE_1__* opttbl ;
 int strcmp (char const*,int ) ;
 char* strdup (char const*) ;
 int strncmp (char const*,char*,int) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static void
stropt(const char *arg, int *xa, int *xo)
{
    const char *q;
    char *s, *s1;
    int inv, i, x;

    if (!(s = strdup(arg)))
        err(1, ((void*)0));
    for (s1 = s; (q = strtok(s1, ",")); s1 = ((void*)0)) {
        if ((inv = !strncmp(q, "no", 2)))
            q += 2;
        for (i = 0; i < nopt; i++)
            if (!strcmp(q, opttbl[i].tok))
                break;
        if (i == nopt)
            errx(1, "%s: Unknown -o option", q);
        if (opttbl[i].def)
            inv ^= 1;
        x = 1 << (7 - i);
        if (inv)
            *xa &= ~x;
        else
            *xo |= x;
    }
    free(s);
}
