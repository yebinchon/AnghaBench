
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct merge_parents {int nr; struct merge_parent* item; } ;
struct merge_parent {int commit; int given; } ;


 int oideq (int *,struct object_id*) ;

__attribute__((used)) static struct merge_parent *find_merge_parent(struct merge_parents *table,
           struct object_id *given,
           struct object_id *commit)
{
 int i;
 for (i = 0; i < table->nr; i++) {
  if (given && !oideq(&table->item[i].given, given))
   continue;
  if (commit && !oideq(&table->item[i].commit, commit))
   continue;
  return &table->item[i];
 }
 return ((void*)0);
}
