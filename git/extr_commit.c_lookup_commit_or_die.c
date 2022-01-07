
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct TYPE_2__ {int oid; } ;
struct commit {TYPE_1__ object; } ;


 int _ (char*) ;
 int die (int ,char const*) ;
 struct commit* lookup_commit_reference (int ,struct object_id const*) ;
 int oid_to_hex (struct object_id const*) ;
 int oideq (struct object_id const*,int *) ;
 int the_repository ;
 int warning (int ,char const*,int ) ;

struct commit *lookup_commit_or_die(const struct object_id *oid, const char *ref_name)
{
 struct commit *c = lookup_commit_reference(the_repository, oid);
 if (!c)
  die(_("could not parse %s"), ref_name);
 if (!oideq(oid, &c->object.oid)) {
  warning(_("%s %s is not a commit!"),
   ref_name, oid_to_hex(oid));
 }
 return c;
}
