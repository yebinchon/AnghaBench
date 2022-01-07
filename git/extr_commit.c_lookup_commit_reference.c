
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct commit {int dummy; } ;


 struct commit* lookup_commit_reference_gently (struct repository*,struct object_id const*,int ) ;

struct commit *lookup_commit_reference(struct repository *r, const struct object_id *oid)
{
 return lookup_commit_reference_gently(r, oid, 0);
}
