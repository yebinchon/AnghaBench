
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct commit {int dummy; } ;
struct branch {int dummy; } ;


 int FILTER_REFS_BRANCHES ;
 int RESOLVE_REF_READING ;
 int _ (char*) ;
 struct branch* branch_get (char const*) ;
 char* branch_get_upstream (struct branch*,int *) ;
 int free (void*) ;
 int in_merge_bases (struct commit*,struct commit*) ;
 struct commit* lookup_commit_reference (int ,struct object_id*) ;
 void* resolve_refdup (char const*,int ,struct object_id*,int *) ;
 int the_repository ;
 int warning (int ,char const*,char const*) ;

__attribute__((used)) static int branch_merged(int kind, const char *name,
    struct commit *rev, struct commit *head_rev)
{






 struct commit *reference_rev = ((void*)0);
 const char *reference_name = ((void*)0);
 void *reference_name_to_free = ((void*)0);
 int merged;

 if (kind == FILTER_REFS_BRANCHES) {
  struct branch *branch = branch_get(name);
  const char *upstream = branch_get_upstream(branch, ((void*)0));
  struct object_id oid;

  if (upstream &&
      (reference_name = reference_name_to_free =
       resolve_refdup(upstream, RESOLVE_REF_READING,
        &oid, ((void*)0))) != ((void*)0))
   reference_rev = lookup_commit_reference(the_repository,
        &oid);
 }
 if (!reference_rev)
  reference_rev = head_rev;

 merged = in_merge_bases(rev, reference_rev);
 if ((head_rev != reference_rev) &&
     in_merge_bases(rev, head_rev) != merged) {
  if (merged)
   warning(_("deleting branch '%s' that has been merged to\n"
    "         '%s', but not yet merged to HEAD."),
    name, reference_name);
  else
   warning(_("not deleting branch '%s' that is not yet merged to\n"
    "         '%s', even though it is merged to HEAD."),
    name, reference_name);
 }
 free(reference_name_to_free);
 return merged;
}
