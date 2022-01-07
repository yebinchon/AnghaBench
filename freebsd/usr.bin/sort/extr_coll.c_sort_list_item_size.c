
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sort_list_item {scalar_t__ str; int ka; } ;
struct key_value {scalar_t__ k; } ;


 scalar_t__ bws_memsize (scalar_t__) ;
 struct key_value* get_key_from_keys_array (int *,size_t) ;
 int keys_array_size () ;
 size_t keys_num ;

size_t
sort_list_item_size(struct sort_list_item *si)
{
 size_t ret = 0;

 if (si) {
  ret = sizeof(struct sort_list_item) + keys_array_size();
  if (si->str)
   ret += bws_memsize(si->str);
  for (size_t i = 0; i < keys_num; ++i) {
   const struct key_value *kv;

   kv = get_key_from_keys_array(&si->ka, i);

   if (kv->k != si->str)
    ret += bws_memsize(kv->k);
  }
 }
 return (ret);
}
