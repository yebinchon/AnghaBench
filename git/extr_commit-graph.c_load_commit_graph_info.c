
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct repository {TYPE_1__* objects; } ;
struct commit {int dummy; } ;
struct TYPE_2__ {int commit_graph; } ;


 int fill_commit_graph_info (struct commit*,int ,int ) ;
 scalar_t__ find_commit_in_graph (struct commit*,int ,int *) ;
 int prepare_commit_graph (struct repository*) ;

void load_commit_graph_info(struct repository *r, struct commit *item)
{
 uint32_t pos;
 if (!prepare_commit_graph(r))
  return;
 if (find_commit_in_graph(item, r->objects->commit_graph, &pos))
  fill_commit_graph_info(item, r->objects->commit_graph, pos);
}
