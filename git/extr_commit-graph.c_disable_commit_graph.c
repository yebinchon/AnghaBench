
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int commit_graph_disabled; } ;



void disable_commit_graph(struct repository *r)
{
 r->commit_graph_disabled = 1;
}
