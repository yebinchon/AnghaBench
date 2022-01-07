
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfvar {int vars; struct cfvar* name; struct cfvar* s; } ;
struct cfstring {int vars; struct cfstring* name; struct cfstring* s; } ;
struct cfparam {int val; } ;


 struct cfvar* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 struct cfvar* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct cfvar*,int ) ;
 int free (struct cfvar*) ;
 int tq ;

__attribute__((used)) static void
free_param_strings(struct cfparam *p)
{
 struct cfstring *s;
 struct cfvar *v;

 while ((s = TAILQ_FIRST(&p->val))) {
  free(s->s);
  while ((v = STAILQ_FIRST(&s->vars))) {
   free(v->name);
   STAILQ_REMOVE_HEAD(&s->vars, tq);
   free(v);
  }
  TAILQ_REMOVE(&p->val, s, tq);
  free(s);
 }
}
