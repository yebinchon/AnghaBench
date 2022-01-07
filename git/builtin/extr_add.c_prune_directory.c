
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathspec {int nr; } ;
struct dir_struct {int nr; struct dir_entry** entries; } ;
struct dir_entry {int dummy; } ;


 int add_pathspec_matches_against_index (struct pathspec*,int *,char*) ;
 scalar_t__ dir_path_match (int *,struct dir_entry*,struct pathspec*,int,char*) ;
 int the_index ;
 char* xcalloc (int ,int) ;

__attribute__((used)) static char *prune_directory(struct dir_struct *dir, struct pathspec *pathspec, int prefix)
{
 char *seen;
 int i;
 struct dir_entry **src, **dst;

 seen = xcalloc(pathspec->nr, 1);

 src = dst = dir->entries;
 i = dir->nr;
 while (--i >= 0) {
  struct dir_entry *entry = *src++;
  if (dir_path_match(&the_index, entry, pathspec, prefix, seen))
   *dst++ = entry;
 }
 dir->nr = dst - dir->entries;
 add_pathspec_matches_against_index(pathspec, &the_index, seen);
 return seen;
}
