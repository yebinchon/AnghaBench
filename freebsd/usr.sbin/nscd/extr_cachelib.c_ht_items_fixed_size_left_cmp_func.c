
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_ht_item_data_ {size_t key_size; int * key; } ;


 int assert (int ) ;
 int memcmp (int *,int *,size_t) ;

__attribute__((used)) static int
ht_items_fixed_size_left_cmp_func(const void *p1, const void *p2)
{
     struct cache_ht_item_data_ *hp1, *hp2;
 size_t min_size;
 int result;

 hp1 = (struct cache_ht_item_data_ *)p1;
 hp2 = (struct cache_ht_item_data_ *)p2;

 assert(hp1->key != ((void*)0));
 assert(hp2->key != ((void*)0));

 if (hp1->key_size != hp2->key_size) {
  min_size = (hp1->key_size < hp2->key_size) ? hp1->key_size :
   hp2->key_size;
  result = memcmp(hp1->key, hp2->key, min_size);

  if (result == 0)
   if (min_size == hp1->key_size)
       return (0);
   else
       return ((hp1->key_size < hp2->key_size) ? -1 : 1);
  else
   return (result);
 } else
  return (memcmp(hp1->key, hp2->key, hp1->key_size));
}
