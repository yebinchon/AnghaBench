
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_part_table {int dummy; } ;
struct g_part_entry {int dummy; } ;
struct TYPE_2__ {int ent_type; } ;
struct g_part_apm_entry {TYPE_1__ ent; } ;


 int APM_ENT_TYPE_FREEBSD_SWAP ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int
g_part_apm_dumpto(struct g_part_table *table, struct g_part_entry *baseentry)
{
 struct g_part_apm_entry *entry;

 entry = (struct g_part_apm_entry *)baseentry;
 return ((!strcmp(entry->ent.ent_type, APM_ENT_TYPE_FREEBSD_SWAP))
     ? 1 : 0);
}
