
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sort_level {int dummy; } ;
struct level_stack {struct level_stack* next; struct sort_level* sl; } ;


 struct level_stack* g_ls ;
 int sort_free (struct level_stack*) ;

__attribute__((used)) static inline struct sort_level*
pop_ls_st(void)
{
 struct sort_level *sl;

 if (g_ls) {
  struct level_stack *saved_ls;

  sl = g_ls->sl;
  saved_ls = g_ls;
  g_ls = g_ls->next;
  sort_free(saved_ls);
 } else
  sl = ((void*)0);

 return (sl);
}
