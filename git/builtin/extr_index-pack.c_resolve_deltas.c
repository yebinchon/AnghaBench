
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct object_entry {int type; } ;
struct TYPE_3__ {int thread; } ;


 int QSORT (int ,scalar_t__,int ) ;
 int _ (char*) ;
 int cleanup_thread () ;
 int compare_ofs_delta_entry ;
 int compare_ref_delta_entry ;
 int die (int ,int ) ;
 int display_progress (int ,int ) ;
 scalar_t__ getenv (char*) ;
 int init_thread () ;
 scalar_t__ is_delta_type (int ) ;
 scalar_t__ nr_dispatched ;
 int nr_objects ;
 scalar_t__ nr_ofs_deltas ;
 scalar_t__ nr_ref_deltas ;
 int nr_resolved_deltas ;
 int nr_threads ;
 struct object_entry* objects ;
 int ofs_deltas ;
 int progress ;
 int pthread_create (int *,int *,int ,TYPE_1__*) ;
 int pthread_join (int ,int *) ;
 int ref_deltas ;
 int resolve_base (struct object_entry*) ;
 scalar_t__ show_resolving_progress ;
 int start_progress (int ,scalar_t__) ;
 int strerror (int) ;
 TYPE_1__* thread_data ;
 int threaded_second_pass ;
 scalar_t__ verbose ;

__attribute__((used)) static void resolve_deltas(void)
{
 int i;

 if (!nr_ofs_deltas && !nr_ref_deltas)
  return;


 QSORT(ofs_deltas, nr_ofs_deltas, compare_ofs_delta_entry);
 QSORT(ref_deltas, nr_ref_deltas, compare_ref_delta_entry);

 if (verbose || show_resolving_progress)
  progress = start_progress(_("Resolving deltas"),
       nr_ref_deltas + nr_ofs_deltas);

 nr_dispatched = 0;
 if (nr_threads > 1 || getenv("GIT_FORCE_THREADS")) {
  init_thread();
  for (i = 0; i < nr_threads; i++) {
   int ret = pthread_create(&thread_data[i].thread, ((void*)0),
       threaded_second_pass, thread_data + i);
   if (ret)
    die(_("unable to create thread: %s"),
        strerror(ret));
  }
  for (i = 0; i < nr_threads; i++)
   pthread_join(thread_data[i].thread, ((void*)0));
  cleanup_thread();
  return;
 }

 for (i = 0; i < nr_objects; i++) {
  struct object_entry *obj = &objects[i];

  if (is_delta_type(obj->type))
   continue;
  resolve_base(obj);
  display_progress(progress, nr_resolved_deltas);
 }
}
