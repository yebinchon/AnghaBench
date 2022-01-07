
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keep {struct keep* next; int * sym; } ;


 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 struct keep* keep_list ;
 scalar_t__ malloc (int) ;
 char* pname ;
 int stderr ;
 int strcmp (char*,int *) ;
 int * strdup (char*) ;

void
add_to_keep_list(char *symbol)
{
    struct keep *newp, *prevp, *curp;
    int cmp;

    cmp = 0;

    for(curp = keep_list, prevp = ((void*)0); curp; prevp = curp, curp = curp->next)
 if((cmp = strcmp(symbol, curp->sym)) <= 0) break;

    if(curp && cmp == 0)
 return;

    newp = (struct keep *) malloc(sizeof(struct keep));
    if(newp) newp->sym = strdup(symbol);
    if(newp == ((void*)0) || newp->sym == ((void*)0)) {
 fprintf(stderr, "%s: out of memory for keep list\n", pname);
 exit(1);
    }

    newp->next = curp;
    if(prevp) prevp->next = newp;
    else keep_list = newp;
}
