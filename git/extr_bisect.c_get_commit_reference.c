
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct commit {int dummy; } ;


 int _ (char*) ;
 int die (int ,int ) ;
 struct commit* lookup_commit_reference (struct repository*,struct object_id const*) ;
 int oid_to_hex (struct object_id const*) ;

__attribute__((used)) static struct commit *get_commit_reference(struct repository *r,
        const struct object_id *oid)
{
 struct commit *c = lookup_commit_reference(r, oid);
 if (!c)
  die(_("Not a valid commit name %s"), oid_to_hex(oid));
 return c;
}
