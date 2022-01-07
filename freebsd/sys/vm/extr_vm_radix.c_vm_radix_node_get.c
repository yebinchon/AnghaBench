
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_pindex_t ;
typedef void* uint16_t ;
struct vm_radix_node {void* rn_clev; void* rn_count; int rn_owner; } ;


 int M_NOWAIT ;
 struct vm_radix_node* uma_zalloc (int ,int ) ;
 int vm_radix_node_zone ;

__attribute__((used)) static __inline struct vm_radix_node *
vm_radix_node_get(vm_pindex_t owner, uint16_t count, uint16_t clevel)
{
 struct vm_radix_node *rnode;

 rnode = uma_zalloc(vm_radix_node_zone, M_NOWAIT);
 if (rnode == ((void*)0))
  return (((void*)0));
 rnode->rn_owner = owner;
 rnode->rn_count = count;
 rnode->rn_clev = clevel;
 return (rnode);
}
