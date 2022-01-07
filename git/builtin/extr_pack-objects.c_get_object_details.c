
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct object_entry {int no_try_delta; scalar_t__ type_valid; } ;
struct TYPE_3__ {size_t nr_objects; struct object_entry* objects; } ;


 int QSORT (struct object_entry**,size_t,int ) ;
 int _ (char*) ;
 int big_file_threshold ;
 int break_delta_chains (struct object_entry*) ;
 int check_object (struct object_entry*) ;
 int display_progress (int ,size_t) ;
 int free (struct object_entry**) ;
 scalar_t__ oe_size_greater_than (TYPE_1__*,struct object_entry*,int ) ;
 int pack_offset_sort ;
 scalar_t__ progress ;
 int progress_state ;
 int start_progress (int ,size_t) ;
 int stop_progress (int *) ;
 TYPE_1__ to_pack ;
 struct object_entry** xcalloc (size_t,int) ;

__attribute__((used)) static void get_object_details(void)
{
 uint32_t i;
 struct object_entry **sorted_by_offset;

 if (progress)
  progress_state = start_progress(_("Counting objects"),
      to_pack.nr_objects);

 sorted_by_offset = xcalloc(to_pack.nr_objects, sizeof(struct object_entry *));
 for (i = 0; i < to_pack.nr_objects; i++)
  sorted_by_offset[i] = to_pack.objects + i;
 QSORT(sorted_by_offset, to_pack.nr_objects, pack_offset_sort);

 for (i = 0; i < to_pack.nr_objects; i++) {
  struct object_entry *entry = sorted_by_offset[i];
  check_object(entry);
  if (entry->type_valid &&
      oe_size_greater_than(&to_pack, entry, big_file_threshold))
   entry->no_try_delta = 1;
  display_progress(progress_state, i + 1);
 }
 stop_progress(&progress_state);





 for (i = 0; i < to_pack.nr_objects; i++)
  break_delta_chains(&to_pack.objects[i]);

 free(sorted_by_offset);
}
