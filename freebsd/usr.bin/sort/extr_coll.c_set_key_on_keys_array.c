
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keys_array {int dummy; } ;
struct key_value {struct bwstring* k; } ;
struct bwstring {int dummy; } ;


 int bwsfree (struct bwstring*) ;
 struct key_value* get_key_from_keys_array (struct keys_array*,size_t) ;
 size_t keys_num ;

void
set_key_on_keys_array(struct keys_array *ka, struct bwstring *s, size_t ind)
{

 if (ka && keys_num > ind) {
  struct key_value *kv;

  kv = get_key_from_keys_array(ka, ind);

  if (kv->k && kv->k != s)
   bwsfree(kv->k);
  kv->k = s;
 }
}
