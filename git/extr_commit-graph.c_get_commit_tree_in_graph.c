
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree {int dummy; } ;
struct repository {TYPE_1__* objects; } ;
struct commit {int dummy; } ;
struct TYPE_2__ {int commit_graph; } ;


 struct tree* get_commit_tree_in_graph_one (struct repository*,int ,struct commit const*) ;

struct tree *get_commit_tree_in_graph(struct repository *r, const struct commit *c)
{
 return get_commit_tree_in_graph_one(r, r->objects->commit_graph, c);
}
