
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;
struct repository {int dummy; } ;
struct object_id {int hash; } ;
struct commit_graph {scalar_t__ num_commits_in_base; unsigned char* chunk_commit_data; struct commit_graph* base_graph; } ;
struct commit {scalar_t__ graph_pos; struct tree* maybe_tree; } ;


 int GRAPH_DATA_WIDTH ;
 int hashcpy (int ,unsigned char const*) ;
 int lookup_tree (struct repository*,struct object_id*) ;
 int set_commit_tree (struct commit*,int ) ;

__attribute__((used)) static struct tree *load_tree_for_commit(struct repository *r,
      struct commit_graph *g,
      struct commit *c)
{
 struct object_id oid;
 const unsigned char *commit_data;

 while (c->graph_pos < g->num_commits_in_base)
  g = g->base_graph;

 commit_data = g->chunk_commit_data +
   GRAPH_DATA_WIDTH * (c->graph_pos - g->num_commits_in_base);

 hashcpy(oid.hash, commit_data);
 set_commit_tree(c, lookup_tree(r, &oid));

 return c->maybe_tree;
}
