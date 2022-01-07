
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmpfs_node {int tn_interlock; } ;


 int mtx_destroy (int *) ;

__attribute__((used)) static void
tmpfs_node_fini(void *mem, int size)
{
 struct tmpfs_node *node = (struct tmpfs_node *)mem;

 mtx_destroy(&node->tn_interlock);
}
