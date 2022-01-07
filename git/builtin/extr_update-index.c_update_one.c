
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_mode; } ;


 int CE_FSMONITOR_VALID ;
 int CE_SKIP_WORKTREE ;
 int CE_VALID ;
 scalar_t__ MARK_FLAG ;
 int die (char*,char const*) ;
 int errno ;
 scalar_t__ force_remove ;
 int fprintf (int ,char*,char const*) ;
 scalar_t__ lstat (char const*,struct stat*) ;
 scalar_t__ mark_ce_flags (char const*,int ,int) ;
 scalar_t__ mark_fsmonitor_only ;
 scalar_t__ mark_skip_worktree_only ;
 scalar_t__ mark_valid_only ;
 scalar_t__ process_path (char const*,struct stat*,int) ;
 scalar_t__ remove_file_from_cache (char const*) ;
 int report (char*,char const*) ;
 int stderr ;
 int verify_path (char const*,scalar_t__) ;

__attribute__((used)) static void update_one(const char *path)
{
 int stat_errno = 0;
 struct stat st;

 if (mark_valid_only || mark_skip_worktree_only || force_remove ||
     mark_fsmonitor_only)
  st.st_mode = 0;
 else if (lstat(path, &st) < 0) {
  st.st_mode = 0;
  stat_errno = errno;
 }

 if (!verify_path(path, st.st_mode)) {
  fprintf(stderr, "Ignoring path %s\n", path);
  return;
 }
 if (mark_valid_only) {
  if (mark_ce_flags(path, CE_VALID, mark_valid_only == MARK_FLAG))
   die("Unable to mark file %s", path);
  return;
 }
 if (mark_skip_worktree_only) {
  if (mark_ce_flags(path, CE_SKIP_WORKTREE, mark_skip_worktree_only == MARK_FLAG))
   die("Unable to mark file %s", path);
  return;
 }
 if (mark_fsmonitor_only) {
  if (mark_ce_flags(path, CE_FSMONITOR_VALID, mark_fsmonitor_only == MARK_FLAG))
   die("Unable to mark file %s", path);
  return;
 }

 if (force_remove) {
  if (remove_file_from_cache(path))
   die("git update-index: unable to remove %s", path);
  report("remove '%s'", path);
  return;
 }
 if (process_path(path, &st, stat_errno))
  die("Unable to process path %s", path);
 report("add '%s'", path);
}
