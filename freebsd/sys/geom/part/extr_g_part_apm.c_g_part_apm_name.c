
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_part_table {int dummy; } ;
struct g_part_entry {int gpe_index; } ;


 int snprintf (char*,size_t,char*,int) ;

__attribute__((used)) static const char *
g_part_apm_name(struct g_part_table *table, struct g_part_entry *baseentry,
    char *buf, size_t bufsz)
{

 snprintf(buf, bufsz, "s%d", baseentry->gpe_index + 1);
 return (buf);
}
