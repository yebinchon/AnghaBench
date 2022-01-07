
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_graph {int chunk_commit_data; int chunk_oid_lookup; int chunk_oid_fanout; } ;


 int error (char*) ;

__attribute__((used)) static int verify_commit_graph_lite(struct commit_graph *g)
{
 if (!g->chunk_oid_fanout) {
  error("commit-graph is missing the OID Fanout chunk");
  return 1;
 }
 if (!g->chunk_oid_lookup) {
  error("commit-graph is missing the OID Lookup chunk");
  return 1;
 }
 if (!g->chunk_commit_data) {
  error("commit-graph is missing the Commit Data chunk");
  return 1;
 }

 return 0;
}
