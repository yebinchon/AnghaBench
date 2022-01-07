
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gcov_node {int * links; } ;
struct TYPE_2__ {scalar_t__ ext; } ;


 int M_GCOV ;
 int debugfs_remove (int ) ;
 int free (int *,int ) ;
 TYPE_1__* gcov_link ;

__attribute__((used)) static void
remove_links(struct gcov_node *node)
{

 if (node->links == ((void*)0))
  return;
 for (int i = 0; gcov_link[i].ext; i++)
  debugfs_remove(node->links[i]);
 free(node->links, M_GCOV);
 node->links = ((void*)0);
}
