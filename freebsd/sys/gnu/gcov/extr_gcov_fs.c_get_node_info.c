
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_node {scalar_t__ num_loaded; struct gcov_info* unloaded_info; struct gcov_info** loaded_info; } ;
struct gcov_info {int dummy; } ;



__attribute__((used)) static struct gcov_info *
get_node_info(struct gcov_node *node)
{
 if (node->num_loaded > 0)
  return (node->loaded_info[0]);

 return (node->unloaded_info);
}
