
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathspec {int dummy; } ;
struct cache_entry {char* name; } ;


 struct cache_entry** active_cache ;
 int active_nr ;
 int ce_path_match (int *,struct cache_entry*,struct pathspec*,int *) ;
 scalar_t__ chmod_cache_entry (struct cache_entry*,char) ;
 int fprintf (int ,char*,char,char*) ;
 int stderr ;
 int the_index ;

__attribute__((used)) static void chmod_pathspec(struct pathspec *pathspec, char flip)
{
 int i;

 for (i = 0; i < active_nr; i++) {
  struct cache_entry *ce = active_cache[i];

  if (pathspec && !ce_path_match(&the_index, ce, pathspec, ((void*)0)))
   continue;

  if (chmod_cache_entry(ce, flip) < 0)
   fprintf(stderr, "cannot chmod %cx '%s'\n", flip, ce->name);
 }
}
