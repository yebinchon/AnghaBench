
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devmap_entry {int dummy; } ;


 struct devmap_entry const* devmap_table ;

void
devmap_register_table(const struct devmap_entry *table)
{

 devmap_table = table;
}
