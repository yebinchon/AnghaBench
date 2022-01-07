
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keys_array {int dummy; } ;
struct key_value {struct bwstring const* k; } ;
struct bwstring {int dummy; } ;


 int bwsfree (struct bwstring const*) ;
 struct key_value* get_key_from_keys_array (struct keys_array*,size_t) ;
 int keys_array_size () ;
 size_t keys_num ;
 int memset (struct keys_array*,int ,int ) ;

void
clean_keys_array(const struct bwstring *s, struct keys_array *ka)
{

 if (ka) {
  for (size_t i = 0; i < keys_num; ++i) {
   const struct key_value *kv;

   kv = get_key_from_keys_array(ka, i);
   if (kv->k && kv->k != s)
    bwsfree(kv->k);
  }
  memset(ka, 0, keys_array_size());
 }
}
