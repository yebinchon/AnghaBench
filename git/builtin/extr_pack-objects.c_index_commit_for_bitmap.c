
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit {int dummy; } ;


 int REALLOC_ARRAY (struct commit**,int) ;
 struct commit** indexed_commits ;
 int indexed_commits_alloc ;
 int indexed_commits_nr ;

__attribute__((used)) static void index_commit_for_bitmap(struct commit *commit)
{
 if (indexed_commits_nr >= indexed_commits_alloc) {
  indexed_commits_alloc = (indexed_commits_alloc + 32) * 2;
  REALLOC_ARRAY(indexed_commits, indexed_commits_alloc);
 }

 indexed_commits[indexed_commits_nr++] = commit;
}
