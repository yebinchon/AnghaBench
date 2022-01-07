
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unp_defer {struct file* ud_fp; } ;
struct thread {int dummy; } ;
struct file {int dummy; } ;


 int M_TEMP ;
 int M_WAITOK ;
 int SLIST_INSERT_HEAD (int *,struct unp_defer*,int ) ;
 int UNP_DEFERRED_LOCK () ;
 int UNP_DEFERRED_UNLOCK () ;
 int atomic_add_int (int *,int) ;
 int closef (struct file*,struct thread*) ;
 struct unp_defer* malloc (int,int ,int ) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;
 int ud_link ;
 int unp_defer_task ;
 int unp_defers ;
 int unp_defers_count ;
 scalar_t__ unp_externalize_fp (struct file*) ;

__attribute__((used)) static void
unp_discard(struct file *fp)
{
 struct unp_defer *dr;

 if (unp_externalize_fp(fp)) {
  dr = malloc(sizeof(*dr), M_TEMP, M_WAITOK);
  dr->ud_fp = fp;
  UNP_DEFERRED_LOCK();
  SLIST_INSERT_HEAD(&unp_defers, dr, ud_link);
  UNP_DEFERRED_UNLOCK();
  atomic_add_int(&unp_defers_count, 1);
  taskqueue_enqueue(taskqueue_thread, &unp_defer_task);
 } else
  (void) closef(fp, (struct thread *)((void*)0));
}
