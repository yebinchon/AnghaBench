
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dn_ht {int buckets; int (* hash ) (uintptr_t,int,void*) ;void** ht; int ofs; void* (* newh ) (uintptr_t,int,void*) ;int entries; scalar_t__ (* match ) (void*,uintptr_t,int,void*) ;} ;


 int DNHT_INSERT ;
 int DNHT_MATCH_PTR ;
 int DNHT_REMOVE ;
 int stub1 (uintptr_t,int,void*) ;
 scalar_t__ stub2 (void*,uintptr_t,int,void*) ;
 void* stub3 (uintptr_t,int,void*) ;

void *
dn_ht_find(struct dn_ht *ht, uintptr_t key, int flags, void *arg)
{
 int i;
 void **pp, *p;

 if (ht == ((void*)0))
  return ((void*)0);
 i = (ht->buckets == 1) ? 0 :
  (ht->hash(key, flags, arg) & ht->buckets);

 for (pp = &ht->ht[i]; (p = *pp); pp = (void **)((char *)p + ht->ofs)) {
  if (flags & DNHT_MATCH_PTR) {
   if (key == (uintptr_t)p)
    break;
  } else if (ht->match(p, key, flags, arg))
   break;
 }
 if (p) {
  if (flags & DNHT_REMOVE) {

   *pp = *(void **)((char *)p + ht->ofs);
   *(void **)((char *)p + ht->ofs) = ((void*)0);
   ht->entries--;
  }
 } else if (flags & DNHT_INSERT) {


  p = ht->newh ? ht->newh(key, flags, arg) : (void *)key;

  if (p) {
   ht->entries++;
   *(void **)((char *)p + ht->ofs) = ht->ht[i];
   ht->ht[i] = p;
  }
 }
 return p;
}
