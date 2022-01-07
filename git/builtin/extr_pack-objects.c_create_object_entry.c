
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct packed_git {int dummy; } ;
struct object_id {int dummy; } ;
struct object_entry {int preferred_base; int no_try_delta; int in_pack_offset; int hash; } ;
typedef int off_t ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int nr_result ;
 int oe_set_in_pack (int *,struct object_entry*,struct packed_git*) ;
 int oe_set_type (struct object_entry*,int) ;
 struct object_entry* packlist_alloc (int *,struct object_id const*) ;
 int to_pack ;

__attribute__((used)) static void create_object_entry(const struct object_id *oid,
    enum object_type type,
    uint32_t hash,
    int exclude,
    int no_try_delta,
    struct packed_git *found_pack,
    off_t found_offset)
{
 struct object_entry *entry;

 entry = packlist_alloc(&to_pack, oid);
 entry->hash = hash;
 oe_set_type(entry, type);
 if (exclude)
  entry->preferred_base = 1;
 else
  nr_result++;
 if (found_pack) {
  oe_set_in_pack(&to_pack, entry, found_pack);
  entry->in_pack_offset = found_offset;
 }

 entry->no_try_delta = no_try_delta;
}
