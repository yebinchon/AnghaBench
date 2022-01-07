
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct unpacked {int depth; struct unpacked* data; int index; struct object_entry* entry; } ;
struct object_entry {unsigned long z_delta_size; scalar_t__ delta_data; scalar_t__ preferred_base; } ;


 scalar_t__ DELTA (struct object_entry*) ;
 scalar_t__ DELTA_CHILD (struct object_entry*) ;
 scalar_t__ DELTA_SIZE (struct object_entry*) ;
 int FREE_AND_NULL (scalar_t__) ;
 unsigned int OE_Z_DELTA_BITS ;
 int cache_lock () ;
 int cache_unlock () ;
 scalar_t__ check_delta_limit (struct object_entry*,int ) ;
 unsigned long delta_cache_size ;
 int display_progress (int ,unsigned int) ;
 unsigned long do_compress (scalar_t__*,scalar_t__) ;
 int free (struct unpacked*) ;
 int free_delta_index (int ) ;
 scalar_t__ free_unpacked (struct unpacked*) ;
 int pack_to_stdout ;
 int progress_lock () ;
 int progress_state ;
 int progress_unlock () ;
 int try_delta (struct unpacked*,struct unpacked*,int,unsigned long*) ;
 unsigned long window_memory_limit ;
 struct unpacked* xcalloc (int,int) ;

__attribute__((used)) static void find_deltas(struct object_entry **list, unsigned *list_size,
   int window, int depth, unsigned *processed)
{
 uint32_t i, idx = 0, count = 0;
 struct unpacked *array;
 unsigned long mem_usage = 0;

 array = xcalloc(window, sizeof(struct unpacked));

 for (;;) {
  struct object_entry *entry;
  struct unpacked *n = array + idx;
  int j, max_depth, best_base = -1;

  progress_lock();
  if (!*list_size) {
   progress_unlock();
   break;
  }
  entry = *list++;
  (*list_size)--;
  if (!entry->preferred_base) {
   (*processed)++;
   display_progress(progress_state, *processed);
  }
  progress_unlock();

  mem_usage -= free_unpacked(n);
  n->entry = entry;

  while (window_memory_limit &&
         mem_usage > window_memory_limit &&
         count > 1) {
   const uint32_t tail = (idx + window - count) % window;
   mem_usage -= free_unpacked(array + tail);
   count--;
  }




  if (entry->preferred_base)
   goto next;






  max_depth = depth;
  if (DELTA_CHILD(entry)) {
   max_depth -= check_delta_limit(entry, 0);
   if (max_depth <= 0)
    goto next;
  }

  j = window;
  while (--j > 0) {
   int ret;
   uint32_t other_idx = idx + j;
   struct unpacked *m;
   if (other_idx >= window)
    other_idx -= window;
   m = array + other_idx;
   if (!m->entry)
    break;
   ret = try_delta(n, m, max_depth, &mem_usage);
   if (ret < 0)
    break;
   else if (ret > 0)
    best_base = other_idx;
  }
  if (entry->delta_data && !pack_to_stdout) {
   unsigned long size;

   size = do_compress(&entry->delta_data, DELTA_SIZE(entry));
   if (size < (1U << OE_Z_DELTA_BITS)) {
    entry->z_delta_size = size;
    cache_lock();
    delta_cache_size -= DELTA_SIZE(entry);
    delta_cache_size += entry->z_delta_size;
    cache_unlock();
   } else {
    FREE_AND_NULL(entry->delta_data);
    entry->z_delta_size = 0;
   }
  }





  if (DELTA(entry) && max_depth <= n->depth)
   continue;






  if (DELTA(entry)) {
   struct unpacked swap = array[best_base];
   int dist = (window + idx - best_base) % window;
   int dst = best_base;
   while (dist--) {
    int src = (dst + 1) % window;
    array[dst] = array[src];
    dst = src;
   }
   array[dst] = swap;
  }

  next:
  idx++;
  if (count + 1 < window)
   count++;
  if (idx >= window)
   idx = 0;
 }

 for (i = 0; i < window; ++i) {
  free_delta_index(array[i].index);
  free(array[i].data);
 }
 free(array);
}
