
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_node_head {int rh; scalar_t__ (* rnh_deladdr ) (int ,int ,int *) ;} ;
struct radix_node {int rn_mask; int rn_key; } ;
struct radix_addr_entry {int dummy; } ;


 int M_IPFW_TBL ;
 int free (struct radix_addr_entry*,int ) ;
 scalar_t__ stub1 (int ,int ,int *) ;

__attribute__((used)) static int
flush_radix_entry(struct radix_node *rn, void *arg)
{
 struct radix_node_head * const rnh = arg;
 struct radix_addr_entry *ent;

 ent = (struct radix_addr_entry *)
     rnh->rnh_deladdr(rn->rn_key, rn->rn_mask, &rnh->rh);
 if (ent != ((void*)0))
  free(ent, M_IPFW_TBL);
 return (0);
}
