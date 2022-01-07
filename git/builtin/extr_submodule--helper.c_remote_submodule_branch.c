
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule {char const* name; char* branch; } ;


 int _ (char*) ;
 int die (int ,char const*) ;
 int free (char*) ;
 int null_oid ;
 scalar_t__ repo_config_get_string_const (int ,char*,char const**) ;
 char* resolve_ref_unsafe (char*,int ,int *,int *) ;
 int skip_prefix (char const*,char*,char const**) ;
 int strcmp (char const*,char*) ;
 struct submodule* submodule_from_path (int ,int *,char const*) ;
 int the_repository ;
 char* xstrfmt (char*,char const*) ;

__attribute__((used)) static const char *remote_submodule_branch(const char *path)
{
 const struct submodule *sub;
 const char *branch = ((void*)0);
 char *key;

 sub = submodule_from_path(the_repository, &null_oid, path);
 if (!sub)
  return ((void*)0);

 key = xstrfmt("submodule.%s.branch", sub->name);
 if (repo_config_get_string_const(the_repository, key, &branch))
  branch = sub->branch;
 free(key);

 if (!branch)
  return "master";

 if (!strcmp(branch, ".")) {
  const char *refname = resolve_ref_unsafe("HEAD", 0, ((void*)0), ((void*)0));

  if (!refname)
   die(_("No such ref: %s"), "HEAD");


  if (!strcmp(refname, "HEAD"))
   die(_("Submodule (%s) branch configured to inherit "
         "branch from superproject, but the superproject "
         "is not on any branch"), sub->name);

  if (!skip_prefix(refname, "refs/heads/", &refname))
   die(_("Expecting a full ref name, got %s"), refname);
  return refname;
 }

 return branch;
}
