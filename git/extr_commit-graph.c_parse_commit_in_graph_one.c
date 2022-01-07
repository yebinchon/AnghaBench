
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct repository {int dummy; } ;
struct commit_graph {int dummy; } ;
struct TYPE_2__ {scalar_t__ parsed; } ;
struct commit {TYPE_1__ object; } ;


 int fill_commit_in_graph (struct repository*,struct commit*,struct commit_graph*,int ) ;
 scalar_t__ find_commit_in_graph (struct commit*,struct commit_graph*,int *) ;

__attribute__((used)) static int parse_commit_in_graph_one(struct repository *r,
         struct commit_graph *g,
         struct commit *item)
{
 uint32_t pos;

 if (item->object.parsed)
  return 1;

 if (find_commit_in_graph(item, g, &pos))
  return fill_commit_in_graph(r, item, g, pos);

 return 0;
}
