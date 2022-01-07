
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct namedobj_instance {int dummy; } ;


 int hash32_buf (void const*,int,int ) ;

__attribute__((used)) static uint32_t
hash_table_value(struct namedobj_instance *ni, const void *key, uint32_t kopt)
{

 return (hash32_buf(key, 56, 0));
}
