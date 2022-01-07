
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keys_array {scalar_t__ key; } ;
struct key_value {int dummy; } ;
typedef scalar_t__ caddr_t ;


 int key_hint_size () ;

struct key_value *
get_key_from_keys_array(struct keys_array *ka, size_t ind)
{

 return ((struct key_value *)((caddr_t)ka->key +
     ind * (sizeof(struct key_value) + key_hint_size())));
}
