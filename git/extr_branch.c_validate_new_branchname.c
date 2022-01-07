
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ buf; } ;


 int _ (char*) ;
 int die (int ,...) ;
 int is_bare_repository () ;
 char* resolve_ref_unsafe (char*,int ,int *,int *) ;
 int strcmp (char const*,scalar_t__) ;
 scalar_t__ strlen (char*) ;
 int validate_branchname (char const*,struct strbuf*) ;

int validate_new_branchname(const char *name, struct strbuf *ref, int force)
{
 const char *head;

 if (!validate_branchname(name, ref))
  return 0;

 if (!force)
  die(_("A branch named '%s' already exists."),
      ref->buf + strlen("refs/heads/"));

 head = resolve_ref_unsafe("HEAD", 0, ((void*)0), ((void*)0));
 if (!is_bare_repository() && head && !strcmp(head, ref->buf))
  die(_("Cannot force update the current branch."));

 return 1;
}
