
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct repository {TYPE_1__* objects; } ;
struct commit_graph {scalar_t__ hash_len; scalar_t__ chunk_commit_data; int num_commits; } ;
struct TYPE_2__ {struct commit_graph* commit_graph; } ;


 int get_be32 (scalar_t__) ;
 int prepare_commit_graph (struct repository*) ;

int generation_numbers_enabled(struct repository *r)
{
 uint32_t first_generation;
 struct commit_graph *g;
 if (!prepare_commit_graph(r))
        return 0;

 g = r->objects->commit_graph;

 if (!g->num_commits)
  return 0;

 first_generation = get_be32(g->chunk_commit_data +
        g->hash_len + 8) >> 2;

 return !!first_generation;
}
