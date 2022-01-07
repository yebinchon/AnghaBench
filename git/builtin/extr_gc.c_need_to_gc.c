
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct string_list {scalar_t__ nr; } ;
struct packed_git {int dummy; } ;


 struct string_list STRING_LIST_INIT_NODUP ;
 int add_repack_all_option (struct string_list*) ;
 int add_repack_incremental_option () ;
 scalar_t__ big_pack_threshold ;
 int estimate_repack_memory (struct packed_git*) ;
 struct packed_git* find_base_packs (struct string_list*,scalar_t__) ;
 scalar_t__ gc_auto_pack_limit ;
 scalar_t__ gc_auto_threshold ;
 scalar_t__ run_hook_le (int *,char*,int *) ;
 int string_list_clear (struct string_list*,int ) ;
 scalar_t__ too_many_loose_objects () ;
 scalar_t__ too_many_packs () ;
 int total_ram () ;

__attribute__((used)) static int need_to_gc(void)
{




 if (gc_auto_threshold <= 0)
  return 0;







 if (too_many_packs()) {
  struct string_list keep_pack = STRING_LIST_INIT_NODUP;

  if (big_pack_threshold) {
   find_base_packs(&keep_pack, big_pack_threshold);
   if (keep_pack.nr >= gc_auto_pack_limit) {
    big_pack_threshold = 0;
    string_list_clear(&keep_pack, 0);
    find_base_packs(&keep_pack, 0);
   }
  } else {
   struct packed_git *p = find_base_packs(&keep_pack, 0);
   uint64_t mem_have, mem_want;

   mem_have = total_ram();
   mem_want = estimate_repack_memory(p);






   if (!mem_have || mem_want < mem_have / 2)
    string_list_clear(&keep_pack, 0);
  }

  add_repack_all_option(&keep_pack);
  string_list_clear(&keep_pack, 0);
 } else if (too_many_loose_objects())
  add_repack_incremental_option();
 else
  return 0;

 if (run_hook_le(((void*)0), "pre-auto-gc", ((void*)0)))
  return 0;
 return 1;
}
