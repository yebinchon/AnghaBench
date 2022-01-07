
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_file {int dummy; } ;


 struct lock_file LOCK_INIT ;
 int REFRESH_QUIET ;
 int REFRESH_UNMERGED ;
 int discard_cache () ;
 int hold_locked_index (struct lock_file*,int ) ;
 int read_cache () ;
 int refresh_cache (int) ;
 int repo_update_index_if_able (int ,struct lock_file*) ;
 int the_repository ;

__attribute__((used)) static void refresh_index_quietly(void)
{
 struct lock_file lock_file = LOCK_INIT;
 int fd;

 fd = hold_locked_index(&lock_file, 0);
 if (fd < 0)
  return;
 discard_cache();
 read_cache();
 refresh_cache(REFRESH_QUIET|REFRESH_UNMERGED);
 repo_update_index_if_able(the_repository, &lock_file);
}
