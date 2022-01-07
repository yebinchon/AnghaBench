
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lockf_entry {scalar_t__ lf_async_task; } ;
struct lockf {int dummy; } ;


 int LIST_REMOVE (struct lockf_entry*,int ) ;
 int lf_link ;
 int lf_print (char*,struct lockf_entry*) ;
 int lockf_debug ;
 int taskqueue_enqueue (int ,scalar_t__) ;
 int taskqueue_thread ;
 int wakeup (struct lockf_entry*) ;

__attribute__((used)) static void
lf_wakeup_lock(struct lockf *state, struct lockf_entry *wakelock)
{





 LIST_REMOVE(wakelock, lf_link);




 if (wakelock->lf_async_task) {
  taskqueue_enqueue(taskqueue_thread, wakelock->lf_async_task);
 } else {
  wakeup(wakelock);
 }
}
