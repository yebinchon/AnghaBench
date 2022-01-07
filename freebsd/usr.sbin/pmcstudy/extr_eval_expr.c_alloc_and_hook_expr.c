
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expression {struct expression* prev; struct expression* next; } ;


 int exit (int) ;
 struct expression* malloc (int) ;
 int memset (struct expression*,int ,int) ;
 int printf (char*) ;

__attribute__((used)) static struct expression *
alloc_and_hook_expr(struct expression **exp_p, struct expression **last_p)
{
 struct expression *ex, *at;

 ex = malloc(sizeof(struct expression));
 if (ex == ((void*)0)) {
  printf("Out of memory in exp allocation\n");
  exit(-2);
 }
 memset(ex, 0, sizeof(struct expression));
 if (*exp_p == ((void*)0)) {
  *exp_p = ex;
 }
 at = *last_p;
 if (at == ((void*)0)) {

  *last_p = ex;
 } else {

  at->next = ex;
  ex->prev = at;
  *last_p = ex;
 }
 return (ex);
}
