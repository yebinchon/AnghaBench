
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {TYPE_1__* parsed_objects; } ;
struct object_id {int hash; } ;
struct commit_graft {int dummy; } ;
struct TYPE_2__ {struct commit_graft** grafts; } ;


 int commit_graft_pos (struct repository*,int ) ;
 int prepare_commit_graft (struct repository*) ;

struct commit_graft *lookup_commit_graft(struct repository *r, const struct object_id *oid)
{
 int pos;
 prepare_commit_graft(r);
 pos = commit_graft_pos(r, oid->hash);
 if (pos < 0)
  return ((void*)0);
 return r->parsed_objects->grafts[pos];
}
