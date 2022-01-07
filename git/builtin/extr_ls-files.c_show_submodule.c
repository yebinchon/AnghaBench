
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule {int dummy; } ;
struct repository {int dummy; } ;
struct dir_struct {int dummy; } ;


 int die (char*) ;
 int null_oid ;
 int repo_clear (struct repository*) ;
 scalar_t__ repo_read_index (struct repository*) ;
 scalar_t__ repo_submodule_init (struct repository*,struct repository*,struct submodule const*) ;
 int show_files (struct repository*,struct dir_struct*) ;
 struct submodule* submodule_from_path (struct repository*,int *,char const*) ;

__attribute__((used)) static void show_submodule(struct repository *superproject,
      struct dir_struct *dir, const char *path)
{
 struct repository subrepo;
 const struct submodule *sub = submodule_from_path(superproject,
         &null_oid, path);

 if (repo_submodule_init(&subrepo, superproject, sub))
  return;

 if (repo_read_index(&subrepo) < 0)
  die("index file corrupt");

 show_files(&subrepo, dir);

 repo_clear(&subrepo);
}
