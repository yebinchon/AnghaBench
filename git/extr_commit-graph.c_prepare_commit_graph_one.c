
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {TYPE_1__* objects; } ;
struct TYPE_2__ {scalar_t__ commit_graph; } ;


 scalar_t__ read_commit_graph_one (struct repository*,char const*) ;

__attribute__((used)) static void prepare_commit_graph_one(struct repository *r, const char *obj_dir)
{

 if (r->objects->commit_graph)
  return;

 r->objects->commit_graph = read_commit_graph_one(r, obj_dir);
}
