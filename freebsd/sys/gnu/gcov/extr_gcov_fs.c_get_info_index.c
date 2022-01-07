
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_node {int num_loaded; struct gcov_info** loaded_info; } ;
struct gcov_info {int dummy; } ;


 int ENOENT ;

__attribute__((used)) static int
get_info_index(struct gcov_node *node, struct gcov_info *info)
{
 int i;

 for (i = 0; i < node->num_loaded; i++) {
  if (node->loaded_info[i] == info)
   return (i);
 }
 return (ENOENT);
}
