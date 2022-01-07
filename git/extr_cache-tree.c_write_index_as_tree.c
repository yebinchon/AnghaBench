
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct lock_file {int dummy; } ;
struct index_state {scalar_t__ cache_tree; } ;


 int COMMIT_LOCK ;
 int LOCK_DIE_ON_ERROR ;
 struct lock_file LOCK_INIT ;
 int WRITE_TREE_IGNORE_CACHE_TREE ;
 int WRITE_TREE_UNREADABLE_INDEX ;
 scalar_t__ cache_tree_fully_valid (scalar_t__) ;
 int get_git_dir () ;
 int hold_lock_file_for_update (struct lock_file*,char const*,int ) ;
 int read_index_from (struct index_state*,char const*,int ) ;
 int rollback_lock_file (struct lock_file*) ;
 int write_index_as_tree_internal (struct object_id*,struct index_state*,int,int,char const*) ;
 int write_locked_index (struct index_state*,struct lock_file*,int ) ;

int write_index_as_tree(struct object_id *oid, struct index_state *index_state, const char *index_path, int flags, const char *prefix)
{
 int entries, was_valid;
 struct lock_file lock_file = LOCK_INIT;
 int ret;

 hold_lock_file_for_update(&lock_file, index_path, LOCK_DIE_ON_ERROR);

 entries = read_index_from(index_state, index_path, get_git_dir());
 if (entries < 0) {
  ret = WRITE_TREE_UNREADABLE_INDEX;
  goto out;
 }

 was_valid = !(flags & WRITE_TREE_IGNORE_CACHE_TREE) &&
      index_state->cache_tree &&
      cache_tree_fully_valid(index_state->cache_tree);

 ret = write_index_as_tree_internal(oid, index_state, was_valid, flags,
        prefix);
 if (!ret && !was_valid) {
  write_locked_index(index_state, &lock_file, COMMIT_LOCK);






 }

out:
 rollback_lock_file(&lock_file);
 return ret;
}
