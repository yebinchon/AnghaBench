
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathspec {int dummy; } ;
struct cache_entry {int name; int ce_mode; } ;


 int ADD_CACHE_RENORMALIZE ;
 int S_ISLNK (int ) ;
 int S_ISREG (int ) ;
 struct cache_entry** active_cache ;
 int active_nr ;
 int add_file_to_cache (int ,int) ;
 int ce_path_match (int *,struct cache_entry*,struct pathspec const*,int *) ;
 scalar_t__ ce_stage (struct cache_entry*) ;
 int the_index ;

__attribute__((used)) static int renormalize_tracked_files(const struct pathspec *pathspec, int flags)
{
 int i, retval = 0;

 for (i = 0; i < active_nr; i++) {
  struct cache_entry *ce = active_cache[i];

  if (ce_stage(ce))
   continue;
  if (!S_ISREG(ce->ce_mode) && !S_ISLNK(ce->ce_mode))
   continue;
  if (pathspec && !ce_path_match(&the_index, ce, pathspec, ((void*)0)))
   continue;
  retval |= add_file_to_cache(ce->name, flags | ADD_CACHE_RENORMALIZE);
 }

 return retval;
}
