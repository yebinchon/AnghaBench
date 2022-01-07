
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ptr; } ;
struct pf_src_node {TYPE_2__ rule; int af; int addr; } ;
struct TYPE_3__ {int src_nodes; } ;


 int LIST_REMOVE (struct pf_src_node*,int ) ;
 int PF_HASHROW_ASSERT (int *) ;
 int * V_pf_srchash ;
 int counter_u64_add (int ,int) ;
 int entry ;
 size_t pf_hashsrc (int *,int ) ;

void
pf_unlink_src_node(struct pf_src_node *src)
{

 PF_HASHROW_ASSERT(&V_pf_srchash[pf_hashsrc(&src->addr, src->af)]);
 LIST_REMOVE(src, entry);
 if (src->rule.ptr)
  counter_u64_add(src->rule.ptr->src_nodes, -1);
}
