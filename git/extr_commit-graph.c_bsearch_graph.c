
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct object_id {int hash; } ;
struct commit_graph {int hash_len; int chunk_oid_lookup; int chunk_oid_fanout; } ;


 int bsearch_hash (int ,int ,int ,int ,int *) ;

__attribute__((used)) static int bsearch_graph(struct commit_graph *g, struct object_id *oid, uint32_t *pos)
{
 return bsearch_hash(oid->hash, g->chunk_oid_fanout,
       g->chunk_oid_lookup, g->hash_len, pos);
}
