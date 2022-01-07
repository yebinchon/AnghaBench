
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tentry_info {scalar_t__ subtype; int value; int flags; } ;
struct table_info {struct radix_node_head* xstate; struct radix_node_head* state; } ;
struct ta_buf_radix {int * ent_ptr; int mask_ptr; int addr_ptr; } ;
struct radix_node_head {int rh; struct radix_node* (* rnh_addaddr ) (int ,int ,int *,int *) ;struct radix_node* (* rnh_lookup ) (int ,int ,int *) ;} ;
struct radix_node {int dummy; } ;
struct radix_cfg {int count6; int count4; } ;
struct radix_addr_xentry {int value; } ;
struct radix_addr_entry {int value; } ;


 scalar_t__ AF_INET ;
 int EEXIST ;
 int EFBIG ;
 int EINVAL ;
 int TEI_FLAGS_DONTADD ;
 int TEI_FLAGS_UPDATE ;
 int TEI_FLAGS_UPDATED ;
 struct radix_node* stub1 (int ,int ,int *) ;
 struct radix_node* stub2 (int ,int ,int *,int *) ;

__attribute__((used)) static int
ta_add_radix(void *ta_state, struct table_info *ti, struct tentry_info *tei,
    void *ta_buf, uint32_t *pnum)
{
 struct radix_cfg *cfg;
 struct radix_node_head *rnh;
 struct radix_node *rn;
 struct ta_buf_radix *tb;
 uint32_t *old_value, value;

 cfg = (struct radix_cfg *)ta_state;
 tb = (struct ta_buf_radix *)ta_buf;


 if (tei->subtype == AF_INET) {
  rnh = ti->state;
  ((struct radix_addr_entry *)tb->ent_ptr)->value = tei->value;
 } else {
  rnh = ti->xstate;
  ((struct radix_addr_xentry *)tb->ent_ptr)->value = tei->value;
 }


 rn = rnh->rnh_lookup(tb->addr_ptr, tb->mask_ptr, &rnh->rh);
 if (rn != ((void*)0)) {
  if ((tei->flags & TEI_FLAGS_UPDATE) == 0)
   return (EEXIST);

  if (tei->subtype == AF_INET)
   old_value = &((struct radix_addr_entry *)rn)->value;
  else
   old_value = &((struct radix_addr_xentry *)rn)->value;

  value = *old_value;
  *old_value = tei->value;
  tei->value = value;


  tei->flags |= TEI_FLAGS_UPDATED;
  *pnum = 0;

  return (0);
 }

 if ((tei->flags & TEI_FLAGS_DONTADD) != 0)
  return (EFBIG);

 rn = rnh->rnh_addaddr(tb->addr_ptr, tb->mask_ptr, &rnh->rh,tb->ent_ptr);
 if (rn == ((void*)0)) {

  return (EINVAL);
 }

 if (tei->subtype == AF_INET)
  cfg->count4++;
 else
  cfg->count6++;
 tb->ent_ptr = ((void*)0);
 *pnum = 1;

 return (0);
}
