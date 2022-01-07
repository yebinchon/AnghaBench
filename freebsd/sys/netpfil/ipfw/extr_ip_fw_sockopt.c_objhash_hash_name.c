
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct namedobj_instance {int dummy; } ;


 int FNV1_32_INIT ;
 int fnv_32_str (char const*,int ) ;

__attribute__((used)) static uint32_t
objhash_hash_name(struct namedobj_instance *ni, const void *name, uint32_t set)
{

 return (fnv_32_str((const char *)name, FNV1_32_INIT));
}
