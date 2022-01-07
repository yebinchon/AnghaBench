
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tentry_info {scalar_t__ subtype; int value; } ;
struct table_info {struct radix_node_head* xstate; struct radix_node_head* state; } ;
struct ta_buf_radix {struct radix_node* ent_ptr; int mask_ptr; int addr_ptr; } ;
struct radix_node_head {int rh; struct radix_node* (* rnh_deladdr ) (int ,int ,int *) ;} ;
struct radix_node {int dummy; } ;
struct radix_cfg {int count6; int count4; } ;
struct radix_addr_xentry {int value; } ;
struct radix_addr_entry {int value; } ;


 scalar_t__ AF_INET ;
 int ENOENT ;
 struct radix_node* stub1 (int ,int ,int *) ;

__attribute__((used)) static int
ta_del_radix(void *ta_state, struct table_info *ti, struct tentry_info *tei,
    void *ta_buf, uint32_t *pnum)
{
 struct radix_cfg *cfg;
 struct radix_node_head *rnh;
 struct radix_node *rn;
 struct ta_buf_radix *tb;

 cfg = (struct radix_cfg *)ta_state;
 tb = (struct ta_buf_radix *)ta_buf;

 if (tei->subtype == AF_INET)
  rnh = ti->state;
 else
  rnh = ti->xstate;

 rn = rnh->rnh_deladdr(tb->addr_ptr, tb->mask_ptr, &rnh->rh);

 if (rn == ((void*)0))
  return (ENOENT);


 if (tei->subtype == AF_INET)
  tei->value = ((struct radix_addr_entry *)rn)->value;
 else
  tei->value = ((struct radix_addr_xentry *)rn)->value;

 tb->ent_ptr = rn;

 if (tei->subtype == AF_INET)
  cfg->count4--;
 else
  cfg->count6--;
 *pnum = 1;

 return (0);
}
