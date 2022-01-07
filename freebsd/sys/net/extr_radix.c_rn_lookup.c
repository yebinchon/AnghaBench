
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radix_node {void* rn_key; void* rn_mask; struct radix_node* rn_dupedkey; } ;
struct radix_head {TYPE_1__* rnh_treetop; int rnh_masks; } ;
typedef void* caddr_t ;
struct TYPE_2__ {int rn_offset; } ;


 scalar_t__ LEN (void*) ;
 scalar_t__ bcmp (void*,void*,scalar_t__) ;
 struct radix_node* rn_addmask (void*,int ,int,int ) ;
 struct radix_node* rn_match (void*,struct radix_head*) ;

struct radix_node *
rn_lookup(void *v_arg, void *m_arg, struct radix_head *head)
{
 struct radix_node *x;
 caddr_t netmask;

 if (m_arg != ((void*)0)) {



  x = rn_addmask(m_arg, head->rnh_masks, 1,
      head->rnh_treetop->rn_offset);
  if (x == ((void*)0))
   return (((void*)0));
  netmask = x->rn_key;

  x = rn_match(v_arg, head);

  while (x != ((void*)0) && x->rn_mask != netmask)
   x = x->rn_dupedkey;

  return (x);
 }




 if ((x = rn_match(v_arg, head)) == ((void*)0))
  return (((void*)0));


 if (LEN(x->rn_key) != LEN(v_arg) || bcmp(x->rn_key, v_arg, LEN(v_arg)))
  return (((void*)0));


 if (x->rn_mask != ((void*)0))
  return (((void*)0));

 return (x);
}
