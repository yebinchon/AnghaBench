
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_part_table {int dummy; } ;
struct TYPE_2__ {int ent_type; } ;
struct g_part_gpt_entry {TYPE_1__ ent; } ;
struct g_part_entry {int dummy; } ;


 scalar_t__ EQUUID (int *,int *) ;
 int gpt_uuid_dfbsd_swap ;
 int gpt_uuid_freebsd_swap ;
 int gpt_uuid_linux_swap ;

__attribute__((used)) static int
g_part_gpt_dumpto(struct g_part_table *table, struct g_part_entry *baseentry)
{
 struct g_part_gpt_entry *entry;

 entry = (struct g_part_gpt_entry *)baseentry;
 return ((EQUUID(&entry->ent.ent_type, &gpt_uuid_freebsd_swap) ||
     EQUUID(&entry->ent.ent_type, &gpt_uuid_linux_swap) ||
     EQUUID(&entry->ent.ent_type, &gpt_uuid_dfbsd_swap)) ? 1 : 0);
}
