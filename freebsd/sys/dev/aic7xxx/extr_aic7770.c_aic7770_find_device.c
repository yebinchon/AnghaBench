
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct aic7770_identity {int full_id; int id_mask; } ;


 int ahc_num_aic7770_devs ;
 struct aic7770_identity* aic7770_ident_table ;

struct aic7770_identity *
aic7770_find_device(uint32_t id)
{
 struct aic7770_identity *entry;
 int i;

 for (i = 0; i < ahc_num_aic7770_devs; i++) {
  entry = &aic7770_ident_table[i];
  if (entry->full_id == (id & entry->id_mask))
   return (entry);
 }
 return (((void*)0));
}
