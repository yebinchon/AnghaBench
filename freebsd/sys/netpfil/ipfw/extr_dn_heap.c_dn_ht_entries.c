
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dn_ht {int entries; } ;



int
dn_ht_entries(struct dn_ht *ht)
{
 return ht ? ht->entries : 0;
}
