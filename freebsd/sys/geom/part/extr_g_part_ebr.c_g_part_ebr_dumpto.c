
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_part_table {int dummy; } ;
struct g_part_entry {int dummy; } ;
struct TYPE_2__ {scalar_t__ dp_typ; } ;
struct g_part_ebr_entry {TYPE_1__ ent; } ;


 scalar_t__ DOSPTYP_386BSD ;
 scalar_t__ DOSPTYP_LINSWP ;

__attribute__((used)) static int
g_part_ebr_dumpto(struct g_part_table *table, struct g_part_entry *baseentry)
{
 struct g_part_ebr_entry *entry;


 entry = (struct g_part_ebr_entry *)baseentry;
 return ((entry->ent.dp_typ == DOSPTYP_386BSD ||
     entry->ent.dp_typ == DOSPTYP_LINSWP) ? 1 : 0);
}
