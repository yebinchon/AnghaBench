
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keep {int sym; struct keep* next; } ;


 struct keep* keep_list ;
 int strcmp (char const*,int ) ;

int
in_keep_list(const char *symbol)
{
    struct keep *curp;
    int cmp;

    cmp = 0;

    for(curp = keep_list; curp; curp = curp->next)
 if((cmp = strcmp(symbol, curp->sym)) <= 0) break;

    return curp && cmp == 0;
}
