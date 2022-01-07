
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct commit_graph {int dummy; } ;


 struct commit_graph* load_commit_graph_chain (struct repository*,char const*) ;
 struct commit_graph* load_commit_graph_v1 (struct repository*,char const*) ;

struct commit_graph *read_commit_graph_one(struct repository *r, const char *obj_dir)
{
 struct commit_graph *g = load_commit_graph_v1(r, obj_dir);

 if (!g)
  g = load_commit_graph_chain(r, obj_dir);

 return g;
}
