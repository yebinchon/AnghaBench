
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_entry {int dummy; } ;


 void* unpack_data (struct object_entry*,int *,int *) ;

__attribute__((used)) static void *get_data_from_pack(struct object_entry *obj)
{
 return unpack_data(obj, ((void*)0), ((void*)0));
}
