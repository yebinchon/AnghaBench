
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct TYPE_2__ {int oid; } ;
struct commit {TYPE_1__ object; } ;


 int die (char*,char const*) ;
 int dwim_ref (char const*,int ,struct object_id*,char**) ;
 struct commit* get_fork_point (char*,struct commit*) ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 struct commit* lookup_commit_reference (int ,struct object_id*) ;
 char* oid_to_hex (int *) ;
 int printf (char*,char*) ;
 int strlen (char const*) ;
 int the_repository ;

__attribute__((used)) static int handle_fork_point(int argc, const char **argv)
{
 struct object_id oid;
 char *refname;
 struct commit *derived, *fork_point;
 const char *commitname;

 switch (dwim_ref(argv[0], strlen(argv[0]), &oid, &refname)) {
 case 0:
  die("No such ref: '%s'", argv[0]);
 case 1:
  break;
 default:
  die("Ambiguous refname: '%s'", argv[0]);
 }

 commitname = (argc == 2) ? argv[1] : "HEAD";
 if (get_oid(commitname, &oid))
  die("Not a valid object name: '%s'", commitname);

 derived = lookup_commit_reference(the_repository, &oid);

 fork_point = get_fork_point(refname, derived);

 if (!fork_point)
  return 1;

 printf("%s\n", oid_to_hex(&fork_point->object.oid));
 return 0;
}
