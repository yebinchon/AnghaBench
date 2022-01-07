
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sort_level {int dummy; } ;
struct level_stack {struct sort_level* sl; } ;


 int _push_ls (struct level_stack*) ;
 int g_ls_cond ;
 int g_ls_mutex ;
 int nthreads ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 struct level_stack* sort_malloc (int) ;

__attribute__((used)) static inline void
push_ls(struct sort_level *sl)
{
 struct level_stack *new_ls;

 new_ls = sort_malloc(sizeof(struct level_stack));
 new_ls->sl = sl;
  _push_ls(new_ls);
}
