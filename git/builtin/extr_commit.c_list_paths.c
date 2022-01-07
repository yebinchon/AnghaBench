
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {struct string_list_item* util; } ;
struct string_list {int dummy; } ;
struct pathspec {int nr; } ;
struct cache_entry {int ce_flags; int name; } ;


 int CE_UPDATE ;
 struct cache_entry** active_cache ;
 int active_nr ;
 int ce_path_match (int *,struct cache_entry const*,struct pathspec const*,char*) ;
 scalar_t__ ce_skip_worktree (struct cache_entry const*) ;
 char* common_prefix (struct pathspec const*) ;
 int free (char*) ;
 int overlay_tree_on_index (int *,char const*,char*) ;
 int report_path_error (char*,struct pathspec const*) ;
 struct string_list_item* string_list_insert (struct string_list*,int ) ;
 int the_index ;
 char* xcalloc (int,int ) ;

__attribute__((used)) static int list_paths(struct string_list *list, const char *with_tree,
        const struct pathspec *pattern)
{
 int i, ret;
 char *m;

 if (!pattern->nr)
  return 0;

 m = xcalloc(1, pattern->nr);

 if (with_tree) {
  char *max_prefix = common_prefix(pattern);
  overlay_tree_on_index(&the_index, with_tree, max_prefix);
  free(max_prefix);
 }

 for (i = 0; i < active_nr; i++) {
  const struct cache_entry *ce = active_cache[i];
  struct string_list_item *item;

  if (ce->ce_flags & CE_UPDATE)
   continue;
  if (!ce_path_match(&the_index, ce, pattern, m))
   continue;
  item = string_list_insert(list, ce->name);
  if (ce_skip_worktree(ce))
   item->util = item;
 }

 ret = report_path_error(m, pattern);
 free(m);
 return ret;
}
