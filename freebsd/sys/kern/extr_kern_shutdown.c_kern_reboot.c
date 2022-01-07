
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CPU_FIRST () ;
 int EVENTHANDLER_INVOKE (int ,int) ;
 int Giant ;
 int KASSERT (int,char*) ;
 scalar_t__ PCPU_GET (int ) ;
 int RB_DUMP ;
 int RB_HALT ;
 int RB_NOSYNC ;
 int SCHEDULER_STOPPED () ;
 int TRUE ;
 int bufshutdown (int ) ;
 int cngrab () ;
 int cold ;
 int cpuid ;
 int curthread ;
 int doadump (int ) ;
 int dumping ;
 scalar_t__ kdb_active ;
 scalar_t__ mtx_owned (int *) ;
 int mtx_unlock (int *) ;
 int print_uptime () ;
 int rebooting ;
 int sched_bind (int ,scalar_t__) ;
 int show_busybufs ;
 int shutdown_final ;
 int shutdown_post_sync ;
 int shutdown_pre_sync ;
 int thread_lock (int ) ;
 int thread_unlock (int ) ;

void
kern_reboot(int howto)
{
 static int once = 0;
 while (mtx_owned(&Giant))
  mtx_unlock(&Giant);
 rebooting = 1;


 kdb_active = 0;




 EVENTHANDLER_INVOKE(shutdown_pre_sync, howto);




 if (!cold && (howto & RB_NOSYNC) == 0 && once == 0) {
  once = 1;
  bufshutdown(show_busybufs);
 }

 print_uptime();

 cngrab();





 EVENTHANDLER_INVOKE(shutdown_post_sync, howto);

 if ((howto & (RB_HALT|RB_DUMP)) == RB_DUMP && !cold && !dumping)
  doadump(TRUE);


 EVENTHANDLER_INVOKE(shutdown_final, howto);

 for(;;) ;

}
