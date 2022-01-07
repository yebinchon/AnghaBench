
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct macro_definition {struct macro_definition* next; } ;
typedef TYPE_1__* ndptr ;
struct TYPE_3__ {struct macro_definition* d; } ;


 TYPE_1__* create_entry (char const*) ;
 int setup_definition (struct macro_definition*,char const*,char const*) ;
 struct macro_definition* xalloc (int,int *) ;

void
macro_pushdef(const char *name, const char *defn)
{
 ndptr n;
 struct macro_definition *d;

 n = create_entry(name);
 d = xalloc(sizeof(struct macro_definition), ((void*)0));
 d->next = n->d;
 n->d = d;
 setup_definition(n->d, defn, name);
}
