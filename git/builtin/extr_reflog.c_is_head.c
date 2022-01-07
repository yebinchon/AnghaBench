
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG (char*,char const*) ;


 int parse_worktree_ref (char const*,int *,int *,char const**) ;
 int ref_type (char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int is_head(const char *refname)
{
 switch (ref_type(refname)) {
 case 128:
 case 129:
  if (parse_worktree_ref(refname, ((void*)0), ((void*)0), &refname))
   BUG("not a worktree ref: %s", refname);
  break;
 default:
  break;
 }
 return !strcmp(refname, "HEAD");
}
