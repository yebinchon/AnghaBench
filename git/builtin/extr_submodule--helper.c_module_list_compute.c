
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathspec {scalar_t__ nr; } ;
struct module_list {scalar_t__ nr; struct cache_entry const** entries; int alloc; } ;
struct cache_entry {int name; int ce_mode; } ;


 int ALLOC_GROW (struct cache_entry const**,scalar_t__,int ) ;
 int PATHSPEC_PREFER_FULL ;
 int S_ISGITLINK (int ) ;
 int _ (char*) ;
 struct cache_entry** active_cache ;
 int active_nr ;
 int ce_namelen (struct cache_entry const*) ;
 int die (int ) ;
 int free (char*) ;
 int match_pathspec (int *,struct pathspec*,int ,int ,int ,char*,int) ;
 int parse_pathspec (struct pathspec*,int ,int ,char const*,char const**) ;
 scalar_t__ read_cache () ;
 scalar_t__ report_path_error (char*,struct pathspec*) ;
 int strcmp (int ,int ) ;
 int the_index ;
 char* xcalloc (scalar_t__,int) ;

__attribute__((used)) static int module_list_compute(int argc, const char **argv,
          const char *prefix,
          struct pathspec *pathspec,
          struct module_list *list)
{
 int i, result = 0;
 char *ps_matched = ((void*)0);
 parse_pathspec(pathspec, 0,
         PATHSPEC_PREFER_FULL,
         prefix, argv);

 if (pathspec->nr)
  ps_matched = xcalloc(pathspec->nr, 1);

 if (read_cache() < 0)
  die(_("index file corrupt"));

 for (i = 0; i < active_nr; i++) {
  const struct cache_entry *ce = active_cache[i];

  if (!match_pathspec(&the_index, pathspec, ce->name, ce_namelen(ce),
        0, ps_matched, 1) ||
      !S_ISGITLINK(ce->ce_mode))
   continue;

  ALLOC_GROW(list->entries, list->nr + 1, list->alloc);
  list->entries[list->nr++] = ce;
  while (i + 1 < active_nr &&
         !strcmp(ce->name, active_cache[i + 1]->name))




   i++;
 }

 if (ps_matched && report_path_error(ps_matched, pathspec))
  result = -1;

 free(ps_matched);

 return result;
}
