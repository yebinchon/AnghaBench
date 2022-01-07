
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmpfs_node {int tn_gen; int tn_interlock; scalar_t__ tn_id; } ;


 int MTX_DEF ;
 int arc4random () ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static int
tmpfs_node_init(void *mem, int size, int flags)
{
 struct tmpfs_node *node = (struct tmpfs_node *)mem;
 node->tn_id = 0;

 mtx_init(&node->tn_interlock, "tmpfs node interlock", ((void*)0), MTX_DEF);
 node->tn_gen = arc4random();

 return (0);
}
