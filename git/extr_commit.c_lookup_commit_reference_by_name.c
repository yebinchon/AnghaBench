
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct commit {int dummy; } ;


 scalar_t__ get_oid_committish (char const*,struct object_id*) ;
 struct commit* lookup_commit_reference (int ,struct object_id*) ;
 scalar_t__ parse_commit (struct commit*) ;
 int the_repository ;

struct commit *lookup_commit_reference_by_name(const char *name)
{
 struct object_id oid;
 struct commit *commit;

 if (get_oid_committish(name, &oid))
  return ((void*)0);
 commit = lookup_commit_reference(the_repository, &oid);
 if (parse_commit(commit))
  return ((void*)0);
 return commit;
}
