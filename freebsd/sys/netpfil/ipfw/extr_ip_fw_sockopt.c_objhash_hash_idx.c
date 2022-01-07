
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct namedobj_instance {int nv_size; } ;



__attribute__((used)) static uint32_t
objhash_hash_idx(struct namedobj_instance *ni, uint32_t val)
{
 uint32_t v;

 v = val % (ni->nv_size - 1);

 return (v);
}
