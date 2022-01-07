
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmpfs_node {int tn_type; } ;


 int VNON ;

__attribute__((used)) static void
tmpfs_node_dtor(void *mem, int size, void *arg)
{
 struct tmpfs_node *node = (struct tmpfs_node *)mem;
 node->tn_type = VNON;
}
