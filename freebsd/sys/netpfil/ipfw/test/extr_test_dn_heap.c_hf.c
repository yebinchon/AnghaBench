
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint32_t ;
struct x {char* buf; } ;


 int DNHT_KEY_IS_OBJ ;

uint32_t hf(uintptr_t key, int flags, void *arg)
{
 return (flags & DNHT_KEY_IS_OBJ) ?
  ((struct x *)key)->buf[0] : *(char *)key;
}
