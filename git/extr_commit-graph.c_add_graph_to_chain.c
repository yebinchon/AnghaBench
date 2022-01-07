
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int hash; } ;
struct commit_graph {int hash_len; scalar_t__ num_commits_in_base; scalar_t__ num_commits; struct commit_graph* base_graph; scalar_t__ chunk_base_graphs; int oid; } ;


 int _ (char*) ;
 int hasheq (int ,scalar_t__) ;
 int oideq (struct object_id*,int *) ;
 int warning (int ) ;

__attribute__((used)) static int add_graph_to_chain(struct commit_graph *g,
         struct commit_graph *chain,
         struct object_id *oids,
         int n)
{
 struct commit_graph *cur_g = chain;

 if (n && !g->chunk_base_graphs) {
  warning(_("commit-graph has no base graphs chunk"));
  return 0;
 }

 while (n) {
  n--;

  if (!cur_g ||
      !oideq(&oids[n], &cur_g->oid) ||
      !hasheq(oids[n].hash, g->chunk_base_graphs + g->hash_len * n)) {
   warning(_("commit-graph chain does not match"));
   return 0;
  }

  cur_g = cur_g->base_graph;
 }

 g->base_graph = chain;

 if (chain)
  g->num_commits_in_base = chain->num_commits + chain->num_commits_in_base;

 return 1;
}
