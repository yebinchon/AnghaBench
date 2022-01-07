
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uma_bucket_zone {int ubz_entries; } ;


 struct uma_bucket_zone* bucket_zones ;

__attribute__((used)) static struct uma_bucket_zone *
bucket_zone_lookup(int entries)
{
 struct uma_bucket_zone *ubz;

 for (ubz = &bucket_zones[0]; ubz->ubz_entries != 0; ubz++)
  if (ubz->ubz_entries >= entries)
   return (ubz);
 ubz--;
 return (ubz);
}
