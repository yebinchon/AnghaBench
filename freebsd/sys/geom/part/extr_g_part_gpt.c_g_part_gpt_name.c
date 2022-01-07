
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_part_table {int dummy; } ;
struct TYPE_2__ {int ent_type; } ;
struct g_part_gpt_entry {TYPE_1__ ent; } ;
struct g_part_entry {int gpe_index; } ;


 scalar_t__ EQUUID (int *,int *) ;
 int gpt_uuid_freebsd ;
 int snprintf (char*,size_t,char*,char,int ) ;

__attribute__((used)) static const char *
g_part_gpt_name(struct g_part_table *table, struct g_part_entry *baseentry,
    char *buf, size_t bufsz)
{
 struct g_part_gpt_entry *entry;
 char c;

 entry = (struct g_part_gpt_entry *)baseentry;
 c = (EQUUID(&entry->ent.ent_type, &gpt_uuid_freebsd)) ? 's' : 'p';
 snprintf(buf, bufsz, "%c%d", c, baseentry->gpe_index);
 return (buf);
}
