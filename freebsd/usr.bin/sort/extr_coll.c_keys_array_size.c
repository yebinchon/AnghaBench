
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_value {int dummy; } ;


 int key_hint_size () ;
 int keys_num ;

size_t
keys_array_size(void)
{

 return (keys_num * (sizeof(struct key_value) + key_hint_size()));
}
