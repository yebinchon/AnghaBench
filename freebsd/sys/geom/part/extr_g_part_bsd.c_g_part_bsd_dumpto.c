
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_part_table {int dummy; } ;
struct g_part_entry {int dummy; } ;
struct TYPE_2__ {scalar_t__ p_fstype; } ;
struct g_part_bsd_entry {TYPE_1__ part; } ;


 scalar_t__ FS_SWAP ;
 scalar_t__ FS_UNUSED ;

__attribute__((used)) static int
g_part_bsd_dumpto(struct g_part_table *table, struct g_part_entry *baseentry)
{
 struct g_part_bsd_entry *entry;


 entry = (struct g_part_bsd_entry *)baseentry;
 return ((entry->part.p_fstype == FS_UNUSED ||
     entry->part.p_fstype == FS_SWAP) ? 1 : 0);
}
