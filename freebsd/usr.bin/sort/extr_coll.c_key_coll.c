
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sort_mods {int (* func ) (struct key_value*,struct key_value*,size_t) ;scalar_t__ rflag; } ;
struct keys_array {int dummy; } ;
struct key_value {int dummy; } ;
struct TYPE_2__ {struct sort_mods sm; } ;


 struct key_value* get_key_from_keys_array (struct keys_array*,size_t) ;
 TYPE_1__* keys ;
 size_t keys_num ;
 int stub1 (struct key_value*,struct key_value*,size_t) ;
 int stub2 (struct key_value*,struct key_value*,size_t) ;

int
key_coll(struct keys_array *ps1, struct keys_array *ps2, size_t offset)
{
 struct key_value *kv1, *kv2;
 struct sort_mods *sm;
 int res = 0;

 for (size_t i = 0; i < keys_num; ++i) {
  kv1 = get_key_from_keys_array(ps1, i);
  kv2 = get_key_from_keys_array(ps2, i);
  sm = &(keys[i].sm);

  if (sm->rflag)
   res = sm->func(kv2, kv1, offset);
  else
   res = sm->func(kv1, kv2, offset);

  if (res)
   break;


  offset = 0;
 }
 return (res);
}
