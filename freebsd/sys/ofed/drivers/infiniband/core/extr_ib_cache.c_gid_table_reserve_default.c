
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int gid_type; } ;
struct ib_gid_table_entry {TYPE_1__ attr; int props; } ;
struct ib_gid_table {unsigned int sz; struct ib_gid_table_entry* data_vec; } ;
struct ib_device {int dummy; } ;


 int BITS_PER_LONG ;
 int GID_TABLE_ENTRY_DEFAULT ;
 unsigned int find_next_bit (unsigned long*,int ,unsigned int) ;
 unsigned int hweight_long (unsigned long) ;
 unsigned long roce_gid_type_mask_support (struct ib_device*,int ) ;

__attribute__((used)) static int gid_table_reserve_default(struct ib_device *ib_dev, u8 port,
         struct ib_gid_table *table)
{
 unsigned int i;
 unsigned long roce_gid_type_mask;
 unsigned int num_default_gids;
 unsigned int current_gid = 0;

 roce_gid_type_mask = roce_gid_type_mask_support(ib_dev, port);
 num_default_gids = hweight_long(roce_gid_type_mask);
 for (i = 0; i < num_default_gids && i < table->sz; i++) {
  struct ib_gid_table_entry *entry =
   &table->data_vec[i];

  entry->props |= GID_TABLE_ENTRY_DEFAULT;
  current_gid = find_next_bit(&roce_gid_type_mask,
         BITS_PER_LONG,
         current_gid);
  entry->attr.gid_type = current_gid++;
 }

 return 0;
}
