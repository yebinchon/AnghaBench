
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct namedobj_instance {int count; } ;



uint32_t
ipfw_objhash_count(struct namedobj_instance *ni)
{

 return (ni->count);
}
