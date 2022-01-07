
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct packed_git {int dummy; } ;
struct object_id {int dummy; } ;
typedef int off_t ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int create_object_entry (struct object_id const*,int,int ,int ,int ,struct packed_git*,int ) ;
 int display_progress (int ,int ) ;
 scalar_t__ have_duplicate_entry (struct object_id const*,int ) ;
 int nr_seen ;
 int progress_state ;
 int want_object_in_pack (struct object_id const*,int ,struct packed_git**,int *) ;

__attribute__((used)) static int add_object_entry_from_bitmap(const struct object_id *oid,
     enum object_type type,
     int flags, uint32_t name_hash,
     struct packed_git *pack, off_t offset)
{
 display_progress(progress_state, ++nr_seen);

 if (have_duplicate_entry(oid, 0))
  return 0;

 if (!want_object_in_pack(oid, 0, &pack, &offset))
  return 0;

 create_object_entry(oid, type, name_hash, 0, 0, pack, offset);
 return 1;
}
