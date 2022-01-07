
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mqfs_node {int dummy; } ;


 int M_WAITOK ;
 int M_ZERO ;
 int mqnode_zone ;
 struct mqfs_node* uma_zalloc (int ,int) ;

__attribute__((used)) static __inline struct mqfs_node *
mqnode_alloc(void)
{
 return uma_zalloc(mqnode_zone, M_WAITOK | M_ZERO);
}
