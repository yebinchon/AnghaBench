
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_object_store {int * commit_graph; } ;


 int close_commit_graph_one (int *) ;

void close_commit_graph(struct raw_object_store *o)
{
 close_commit_graph_one(o->commit_graph);
 o->commit_graph = ((void*)0);
}
