
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct witness_lock_order_key {size_t from; size_t to; } ;
struct witness_lock_order_data {struct witness_lock_order_data* wlod_next; int wlod_key; } ;
struct witness {size_t w_index; } ;
typedef int key ;
struct TYPE_2__ {unsigned int wloh_size; struct witness_lock_order_data** wloh_array; } ;


 int MPASS (int) ;
 int WITNESS_INDEX_ASSERT (size_t) ;
 int WITNESS_LOCK_ORDER_KNOWN ;
 TYPE_1__ w_lohash ;
 int** w_rmatrix ;
 unsigned int witness_hash_djb2 (char const*,int) ;
 scalar_t__ witness_lock_order_key_equal (int *,struct witness_lock_order_key*) ;

__attribute__((used)) static struct witness_lock_order_data *
witness_lock_order_get(struct witness *parent, struct witness *child)
{
 struct witness_lock_order_data *data = ((void*)0);
 struct witness_lock_order_key key;
 unsigned int hash;

 MPASS(parent != ((void*)0) && child != ((void*)0));
 key.from = parent->w_index;
 key.to = child->w_index;
 WITNESS_INDEX_ASSERT(key.from);
 WITNESS_INDEX_ASSERT(key.to);
 if ((w_rmatrix[parent->w_index][child->w_index]
     & WITNESS_LOCK_ORDER_KNOWN) == 0)
  goto out;

 hash = witness_hash_djb2((const char*)&key,
     sizeof(key)) % w_lohash.wloh_size;
 data = w_lohash.wloh_array[hash];
 while (data != ((void*)0)) {
  if (witness_lock_order_key_equal(&data->wlod_key, &key))
   break;
  data = data->wlod_next;
 }

out:
 return (data);
}
