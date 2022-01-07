
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct repository {TYPE_3__* parsed_objects; TYPE_2__* objects; int gitdir; } ;
struct TYPE_6__ {scalar_t__ grafts_nr; } ;
struct TYPE_5__ {TYPE_1__* replace_map; } ;
struct TYPE_4__ {int map; } ;


 scalar_t__ hashmap_get_size (int *) ;
 scalar_t__ is_repository_shallow (struct repository*) ;
 int prepare_commit_graft (struct repository*) ;
 int prepare_replace_object (struct repository*) ;
 scalar_t__ read_replace_refs ;

__attribute__((used)) static int commit_graph_compatible(struct repository *r)
{
 if (!r->gitdir)
  return 0;

 if (read_replace_refs) {
  prepare_replace_object(r);
  if (hashmap_get_size(&r->objects->replace_map->map))
   return 0;
 }

 prepare_commit_graft(r);
 if (r->parsed_objects && r->parsed_objects->grafts_nr)
  return 0;
 if (is_repository_shallow(r))
  return 0;

 return 1;
}
