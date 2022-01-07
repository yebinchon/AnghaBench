
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rulehead {int dummy; } ;
struct rule {int dummy; } ;


 int M_PORTACL ;
 struct rule* TAILQ_FIRST (struct rulehead*) ;
 int TAILQ_REMOVE (struct rulehead*,struct rule*,int ) ;
 int free (struct rule*,int ) ;
 int r_entries ;

__attribute__((used)) static void
toast_rules(struct rulehead *head)
{
 struct rule *rule;

 while ((rule = TAILQ_FIRST(head)) != ((void*)0)) {
  TAILQ_REMOVE(head, rule, r_entries);
  free(rule, M_PORTACL);
 }
}
