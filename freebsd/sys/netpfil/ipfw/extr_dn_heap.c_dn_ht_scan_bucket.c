
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dn_ht {int buckets; void** ht; int ofs; int entries; } ;


 int DNHT_SCAN_DEL ;
 int DNHT_SCAN_END ;

int
dn_ht_scan_bucket(struct dn_ht *ht, int *bucket, int (*fn)(void *, void *),
   void *arg)
{
 int i, ret, found = 0;
 void **curp, *cur, *next;

 if (ht == ((void*)0) || fn == ((void*)0))
  return 0;
 if (*bucket > ht->buckets)
  *bucket = 0;
 i = *bucket;

 curp = &ht->ht[i];
 while ( (cur = *curp) != ((void*)0)) {
  next = *(void **)((char *)cur + ht->ofs);
  ret = fn(cur, arg);
  if (ret & DNHT_SCAN_DEL) {
   found++;
   ht->entries--;
   *curp = next;
  } else {
   curp = (void **)((char *)cur + ht->ofs);
  }
  if (ret & DNHT_SCAN_END)
   return found;
 }
 return found;
}
