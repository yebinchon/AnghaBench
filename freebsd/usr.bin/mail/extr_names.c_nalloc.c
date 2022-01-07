
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name {int n_type; int n_name; int * n_blink; int * n_flink; } ;


 scalar_t__ salloc (int) ;
 int savestr (char*) ;

struct name *
nalloc(char str[], int ntype)
{
 struct name *np;

 np = (struct name *)salloc(sizeof(*np));
 np->n_flink = ((void*)0);
 np->n_blink = ((void*)0);
 np->n_type = ntype;
 np->n_name = savestr(str);
 return (np);
}
