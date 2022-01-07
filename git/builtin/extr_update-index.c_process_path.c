
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct cache_entry {int dummy; } ;


 scalar_t__ S_ISDIR (int ) ;
 struct cache_entry** active_cache ;
 int add_one_path (struct cache_entry const*,char const*,int,struct stat*) ;
 scalar_t__ allow_remove ;
 int cache_name_pos (char const*,int) ;
 scalar_t__ ce_skip_worktree (struct cache_entry const*) ;
 int error (char*,char const*) ;
 scalar_t__ has_symlink_leading_path (char const*,int) ;
 int ignore_skip_worktree_entries ;
 int process_directory (char const*,int,struct stat*) ;
 int process_lstat_error (char const*,int) ;
 scalar_t__ remove_file_from_cache (char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int process_path(const char *path, struct stat *st, int stat_errno)
{
 int pos, len;
 const struct cache_entry *ce;

 len = strlen(path);
 if (has_symlink_leading_path(path, len))
  return error("'%s' is beyond a symbolic link", path);

 pos = cache_name_pos(path, len);
 ce = pos < 0 ? ((void*)0) : active_cache[pos];
 if (ce && ce_skip_worktree(ce)) {





  if (!ignore_skip_worktree_entries && allow_remove &&
      remove_file_from_cache(path))
   return error("%s: cannot remove from the index", path);
  return 0;
 }





 if (stat_errno)
  return process_lstat_error(path, stat_errno);

 if (S_ISDIR(st->st_mode))
  return process_directory(path, len, st);

 return add_one_path(ce, path, len, st);
}
