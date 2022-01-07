
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct commit {int dummy; } ;


 int commit_is_complete (struct commit*) ;
 scalar_t__ is_null_oid (struct object_id*) ;
 struct commit* lookup_commit_reference_gently (int ,struct object_id*,int) ;
 int the_repository ;

__attribute__((used)) static int keep_entry(struct commit **it, struct object_id *oid)
{
 struct commit *commit;

 if (is_null_oid(oid))
  return 1;
 commit = lookup_commit_reference_gently(the_repository, oid, 1);
 if (!commit)
  return 0;
 if (!commit_is_complete(commit))
  return 0;
 *it = commit;
 return 1;
}
