
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree {int dummy; } ;
struct repository {int dummy; } ;
struct TYPE_2__ {int parsed; } ;
struct commit {scalar_t__ graph_pos; struct tree* maybe_tree; TYPE_1__ object; } ;


 scalar_t__ COMMIT_NOT_FROM_GRAPH ;
 struct tree* get_commit_tree_in_graph (struct repository*,struct commit const*) ;

struct tree *repo_get_commit_tree(struct repository *r,
      const struct commit *commit)
{
 if (commit->maybe_tree || !commit->object.parsed)
  return commit->maybe_tree;

 if (commit->graph_pos != COMMIT_NOT_FROM_GRAPH)
  return get_commit_tree_in_graph(r, commit);

 return ((void*)0);
}
