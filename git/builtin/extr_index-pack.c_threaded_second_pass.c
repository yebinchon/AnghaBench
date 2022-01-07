
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;


 int counter_lock () ;
 int counter_unlock () ;
 int display_progress (int ,int ) ;
 scalar_t__ is_delta_type (int ) ;
 size_t nr_dispatched ;
 size_t nr_objects ;
 int nr_resolved_deltas ;
 TYPE_1__* objects ;
 int progress ;
 int resolve_base (TYPE_1__*) ;
 int set_thread_data (void*) ;
 int work_lock () ;
 int work_unlock () ;

__attribute__((used)) static void *threaded_second_pass(void *data)
{
 set_thread_data(data);
 for (;;) {
  int i;
  counter_lock();
  display_progress(progress, nr_resolved_deltas);
  counter_unlock();
  work_lock();
  while (nr_dispatched < nr_objects &&
         is_delta_type(objects[nr_dispatched].type))
   nr_dispatched++;
  if (nr_dispatched >= nr_objects) {
   work_unlock();
   break;
  }
  i = nr_dispatched++;
  work_unlock();

  resolve_base(&objects[i]);
 }
 return ((void*)0);
}
