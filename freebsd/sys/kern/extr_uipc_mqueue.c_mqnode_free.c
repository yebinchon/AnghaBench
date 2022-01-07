
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mqfs_node {int dummy; } ;


 int mqnode_zone ;
 int uma_zfree (int ,struct mqfs_node*) ;

__attribute__((used)) static __inline void
mqnode_free(struct mqfs_node *node)
{
 uma_zfree(mqnode_zone, node);
}
