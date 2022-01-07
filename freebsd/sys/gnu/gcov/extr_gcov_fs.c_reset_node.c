
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_node {int num_loaded; scalar_t__* loaded_info; scalar_t__ unloaded_info; } ;


 int gcov_info_reset (scalar_t__) ;

__attribute__((used)) static void
reset_node(struct gcov_node *node)
{
 int i;

 if (node->unloaded_info)
  gcov_info_reset(node->unloaded_info);
 for (i = 0; i < node->num_loaded; i++)
  gcov_info_reset(node->loaded_info[i]);
}
