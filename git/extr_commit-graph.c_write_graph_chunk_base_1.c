
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hashfile {int dummy; } ;
struct TYPE_3__ {int hash; } ;
struct commit_graph {TYPE_1__ oid; struct commit_graph* base_graph; } ;
struct TYPE_4__ {int rawsz; } ;


 int hashwrite (struct hashfile*,int ,int ) ;
 TYPE_2__* the_hash_algo ;

__attribute__((used)) static int write_graph_chunk_base_1(struct hashfile *f,
        struct commit_graph *g)
{
 int num = 0;

 if (!g)
  return 0;

 num = write_graph_chunk_base_1(f, g->base_graph);
 hashwrite(f, g->oid.hash, the_hash_algo->rawsz);
 return num + 1;
}
