
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct base_data {struct base_data* base; } ;


 struct base_data* find_unresolved_deltas_1 (struct base_data*,struct base_data*) ;
 int free (struct base_data*) ;

__attribute__((used)) static void find_unresolved_deltas(struct base_data *base)
{
 struct base_data *new_base, *prev_base = ((void*)0);
 for (;;) {
  new_base = find_unresolved_deltas_1(base, prev_base);

  if (new_base) {
   prev_base = base;
   base = new_base;
  } else {
   free(base);
   base = prev_base;
   if (!base)
    return;
   prev_base = base->base;
  }
 }
}
