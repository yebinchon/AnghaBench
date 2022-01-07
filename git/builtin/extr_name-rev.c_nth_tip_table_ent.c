
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char const* hash; } ;
struct tip_table_entry {TYPE_1__ oid; } ;



__attribute__((used)) static const unsigned char *nth_tip_table_ent(size_t ix, void *table_)
{
 struct tip_table_entry *table = table_;
 return table[ix].oid.hash;
}
