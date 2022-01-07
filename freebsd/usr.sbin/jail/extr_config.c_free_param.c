
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfparams {int dummy; } ;
struct cfparam {struct cfparam* name; } ;


 int TAILQ_REMOVE (struct cfparams*,struct cfparam*,int ) ;
 int free (struct cfparam*) ;
 int free_param_strings (struct cfparam*) ;
 int tq ;

__attribute__((used)) static void
free_param(struct cfparams *pp, struct cfparam *p)
{
 free(p->name);
 free_param_strings(p);
 TAILQ_REMOVE(pp, p, tq);
 free(p);
}
