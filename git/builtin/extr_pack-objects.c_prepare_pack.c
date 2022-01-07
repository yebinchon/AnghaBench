
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {int oid; } ;
struct object_entry {TYPE_1__ idx; int preferred_base; scalar_t__ no_try_delta; int type_valid; } ;
struct TYPE_6__ {scalar_t__ nr_objects; struct object_entry* objects; } ;


 int ALLOC_ARRAY (struct object_entry**,scalar_t__) ;
 scalar_t__ DELTA (struct object_entry*) ;
 int QSORT (struct object_entry**,unsigned int,int ) ;
 int _ (char*) ;
 int die (int ,...) ;
 int do_check_packed_object_crc ;
 int free (struct object_entry**) ;
 int get_object_details () ;
 int ll_find_deltas (struct object_entry**,unsigned int,int,int,unsigned int*) ;
 scalar_t__ oe_size_less_than (TYPE_2__*,struct object_entry*,int) ;
 scalar_t__ oe_type (struct object_entry*) ;
 int oid_to_hex (int *) ;
 int pack_to_stdout ;
 scalar_t__ progress ;
 int progress_state ;
 int resolve_tree_islands (int ,scalar_t__,TYPE_2__*) ;
 int start_progress (int ,scalar_t__) ;
 int stop_progress (int *) ;
 int the_repository ;
 TYPE_2__ to_pack ;
 int type_size_sort ;
 scalar_t__ use_delta_islands ;

__attribute__((used)) static void prepare_pack(int window, int depth)
{
 struct object_entry **delta_list;
 uint32_t i, nr_deltas;
 unsigned n;

 if (use_delta_islands)
  resolve_tree_islands(the_repository, progress, &to_pack);

 get_object_details();
 if (!pack_to_stdout)
  do_check_packed_object_crc = 1;

 if (!to_pack.nr_objects || !window || !depth)
  return;

 ALLOC_ARRAY(delta_list, to_pack.nr_objects);
 nr_deltas = n = 0;

 for (i = 0; i < to_pack.nr_objects; i++) {
  struct object_entry *entry = to_pack.objects + i;

  if (DELTA(entry))



   continue;

  if (!entry->type_valid ||
      oe_size_less_than(&to_pack, entry, 50))
   continue;

  if (entry->no_try_delta)
   continue;

  if (!entry->preferred_base) {
   nr_deltas++;
   if (oe_type(entry) < 0)
    die(_("unable to get type of object %s"),
        oid_to_hex(&entry->idx.oid));
  } else {
   if (oe_type(entry) < 0) {




    continue;
   }
  }

  delta_list[n++] = entry;
 }

 if (nr_deltas && n > 1) {
  unsigned nr_done = 0;
  if (progress)
   progress_state = start_progress(_("Compressing objects"),
       nr_deltas);
  QSORT(delta_list, n, type_size_sort);
  ll_find_deltas(delta_list, n, window+1, depth, &nr_done);
  stop_progress(&progress_state);
  if (nr_done != nr_deltas)
   die(_("inconsistency with delta count"));
 }
 free(delta_list);
}
