
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {TYPE_1__* objects; } ;
struct commit {int dummy; } ;
struct TYPE_2__ {int commit_graph; } ;


 int parse_commit_in_graph_one (struct repository*,int ,struct commit*) ;
 int prepare_commit_graph (struct repository*) ;

int parse_commit_in_graph(struct repository *r, struct commit *item)
{
 if (!prepare_commit_graph(r))
  return 0;
 return parse_commit_in_graph_one(r, r->objects->commit_graph, item);
}
