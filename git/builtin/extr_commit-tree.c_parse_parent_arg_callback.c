
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {struct commit_list** value; } ;
struct object_id {int dummy; } ;
struct commit_list {int dummy; } ;


 int BUG_ON_OPT_NEG_NOARG (int,char const*) ;
 int OBJ_COMMIT ;
 int _ (char*) ;
 int assert_oid_type (struct object_id*,int ) ;
 int die (int ,char const*) ;
 scalar_t__ get_oid_commit (char const*,struct object_id*) ;
 int lookup_commit (int ,struct object_id*) ;
 int new_parent (int ,struct commit_list**) ;
 int the_repository ;

__attribute__((used)) static int parse_parent_arg_callback(const struct option *opt,
  const char *arg, int unset)
{
 struct object_id oid;
 struct commit_list **parents = opt->value;

 BUG_ON_OPT_NEG_NOARG(unset, arg);

 if (get_oid_commit(arg, &oid))
  die(_("not a valid object name %s"), arg);

 assert_oid_type(&oid, OBJ_COMMIT);
 new_parent(lookup_commit(the_repository, &oid), parents);
 return 0;
}
