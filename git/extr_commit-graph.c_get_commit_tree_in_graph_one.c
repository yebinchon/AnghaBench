
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;
struct repository {int dummy; } ;
struct commit_graph {int dummy; } ;
struct commit {scalar_t__ graph_pos; struct tree* maybe_tree; } ;


 int BUG (char*) ;
 scalar_t__ COMMIT_NOT_FROM_GRAPH ;
 struct tree* load_tree_for_commit (struct repository*,struct commit_graph*,struct commit*) ;

__attribute__((used)) static struct tree *get_commit_tree_in_graph_one(struct repository *r,
       struct commit_graph *g,
       const struct commit *c)
{
 if (c->maybe_tree)
  return c->maybe_tree;
 if (c->graph_pos == COMMIT_NOT_FROM_GRAPH)
  BUG("get_commit_tree_in_graph_one called from non-commit-graph commit");

 return load_tree_for_commit(r, g, (struct commit *)c);
}
