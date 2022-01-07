
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_fragment {int fr_id; int fr_proto; int fr_af; int fr_dst; int fr_src; } ;


 int pf_addr_cmp (int *,int *,int) ;

__attribute__((used)) static int
pf_frag_compare(struct pf_fragment *a, struct pf_fragment *b)
{
 int diff;

 if ((diff = a->fr_id - b->fr_id) != 0)
  return (diff);
 if ((diff = a->fr_proto - b->fr_proto) != 0)
  return (diff);
 if ((diff = a->fr_af - b->fr_af) != 0)
  return (diff);
 if ((diff = pf_addr_cmp(&a->fr_src, &b->fr_src, a->fr_af)) != 0)
  return (diff);
 if ((diff = pf_addr_cmp(&a->fr_dst, &b->fr_dst, a->fr_af)) != 0)
  return (diff);
 return (0);
}
