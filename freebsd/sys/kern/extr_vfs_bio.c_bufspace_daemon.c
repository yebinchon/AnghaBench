
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufdomain {scalar_t__ bd_bufspace; scalar_t__ bd_lobufspace; scalar_t__ bd_freebuffers; scalar_t__ bd_hifreebuffers; scalar_t__ bd_wanted; } ;


 int BD_LOCK (struct bufdomain*) ;
 int BD_LOCKPTR (struct bufdomain*) ;
 int BD_UNLOCK (struct bufdomain*) ;
 int EVENTHANDLER_REGISTER (int ,int ,int ,scalar_t__) ;
 int PDROP ;
 int PRIBIO ;
 scalar_t__ SHUTDOWN_PRI_LAST ;
 scalar_t__ bd_flushall (struct bufdomain*) ;
 int bd_speedup () ;
 scalar_t__ buf_recycle (struct bufdomain*,int) ;
 int bufspace_daemon_wait (struct bufdomain*) ;
 int curthread ;
 int hz ;
 int kthread_shutdown ;
 int kthread_suspend_check () ;
 int maybe_yield () ;
 int msleep (scalar_t__*,int ,int,char*,int) ;
 int shutdown_pre_sync ;

__attribute__((used)) static void
bufspace_daemon(void *arg)
{
 struct bufdomain *bd;

 EVENTHANDLER_REGISTER(shutdown_pre_sync, kthread_shutdown, curthread,
     SHUTDOWN_PRI_LAST + 100);

 bd = arg;
 for (;;) {
  kthread_suspend_check();
  while (bd->bd_bufspace > bd->bd_lobufspace ||
      bd->bd_freebuffers < bd->bd_hifreebuffers) {
   if (buf_recycle(bd, 0) != 0) {
    if (bd_flushall(bd))
     continue;
    bd_speedup();
    BD_LOCK(bd);
    if (bd->bd_wanted) {
     msleep(&bd->bd_wanted, BD_LOCKPTR(bd),
         PRIBIO|PDROP, "bufspace", hz/10);
    } else
     BD_UNLOCK(bd);
   }
   maybe_yield();
  }
  bufspace_daemon_wait(bd);
 }
}
