
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cache_entry {int name; int ce_mode; } ;
struct TYPE_4__ {int nr; TYPE_1__* entry; } ;
struct TYPE_3__ {char* name; } ;


 int ABSORB_GITDIR_RECURSE_SUBMODULES ;
 int S_ISGITLINK (int ) ;
 int absorb_git_dir_into_superproject (char const*,int ) ;
 struct cache_entry** active_cache ;
 int cache_name_pos (char const*,int ) ;
 int file_exists (int ) ;
 int get_ours_cache_pos (char const*,int) ;
 scalar_t__ is_empty_dir (char const*) ;
 TYPE_2__ list ;
 int strlen (char const*) ;
 int submodule_uses_gitfile (char const*) ;

__attribute__((used)) static void submodules_absorb_gitdir_if_needed(void)
{
 int i;
 for (i = 0; i < list.nr; i++) {
  const char *name = list.entry[i].name;
  int pos;
  const struct cache_entry *ce;

  pos = cache_name_pos(name, strlen(name));
  if (pos < 0) {
   pos = get_ours_cache_pos(name, pos);
   if (pos < 0)
    continue;
  }
  ce = active_cache[pos];

  if (!S_ISGITLINK(ce->ce_mode) ||
      !file_exists(ce->name) ||
      is_empty_dir(name))
   continue;

  if (!submodule_uses_gitfile(name))
   absorb_git_dir_into_superproject(name,
    ABSORB_GITDIR_RECURSE_SUBMODULES);
 }
}
