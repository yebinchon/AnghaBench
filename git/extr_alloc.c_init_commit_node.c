
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct commit {int generation; int graph_pos; int index; TYPE_1__ object; } ;


 int COMMIT_NOT_FROM_GRAPH ;
 int GENERATION_NUMBER_INFINITY ;
 int OBJ_COMMIT ;
 int alloc_commit_index (struct repository*) ;

void init_commit_node(struct repository *r, struct commit *c)
{
 c->object.type = OBJ_COMMIT;
 c->index = alloc_commit_index(r);
 c->graph_pos = COMMIT_NOT_FROM_GRAPH;
 c->generation = GENERATION_NUMBER_INFINITY;
}
