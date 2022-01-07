
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;
struct tree {int dummy; } ;
struct revindex_entry {int dummy; } ;
struct packed_git {size_t pack_size; size_t index_size; } ;
struct object_entry {int dummy; } ;
struct object {int dummy; } ;
struct blob {int dummy; } ;


 unsigned long approximate_object_count () ;
 scalar_t__ delta_base_cache_limit ;
 scalar_t__ max_delta_cache_size ;

__attribute__((used)) static uint64_t estimate_repack_memory(struct packed_git *pack)
{
 unsigned long nr_objects = approximate_object_count();
 size_t os_cache, heap;

 if (!pack || !nr_objects)
  return 0;







 os_cache = pack->pack_size + pack->index_size;

 heap = sizeof(struct object_entry) * nr_objects;




 heap += sizeof(struct blob) * nr_objects / 2;




 heap += sizeof(struct tree) * nr_objects / 2;

 heap += sizeof(struct object *) * nr_objects;

 heap += sizeof(struct revindex_entry) * nr_objects;




 heap += delta_base_cache_limit;

 heap += max_delta_cache_size;

 return os_cache + heap;
}
