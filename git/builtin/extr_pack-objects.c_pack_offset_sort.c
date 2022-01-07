
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct packed_git {int dummy; } ;
struct TYPE_2__ {int oid; } ;
struct object_entry {scalar_t__ in_pack_offset; TYPE_1__ idx; } ;


 struct packed_git* IN_PACK (struct object_entry const*) ;
 int oidcmp (int *,int *) ;

__attribute__((used)) static int pack_offset_sort(const void *_a, const void *_b)
{
 const struct object_entry *a = *(struct object_entry **)_a;
 const struct object_entry *b = *(struct object_entry **)_b;
 const struct packed_git *a_in_pack = IN_PACK(a);
 const struct packed_git *b_in_pack = IN_PACK(b);


 if (!a_in_pack && !b_in_pack)
  return oidcmp(&a->idx.oid, &b->idx.oid);

 if (a_in_pack < b_in_pack)
  return -1;
 if (a_in_pack > b_in_pack)
  return 1;
 return a->in_pack_offset < b->in_pack_offset ? -1 :
   (a->in_pack_offset > b->in_pack_offset);
}
