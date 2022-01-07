
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_proc; } ;
struct rtprio {int type; int prio; } ;


 int PROC_SLOCK (int ) ;
 int PROC_SUNLOCK (int ) ;
 int RTP_PRIO_IDLE ;
 int RTP_PRIO_MAX ;
 int SW_VOL ;
 struct thread* curthread ;
 int ether_poll (int ) ;
 int hz ;
 int idlepoll_sleeping ;
 int mi_switch (int ,int *) ;
 int poll_each_burst ;
 scalar_t__ poll_handlers ;
 scalar_t__ poll_in_idle_loop ;
 int rtp_to_pri (struct rtprio*,struct thread*) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;
 int tsleep (int*,int ,char*,int) ;

__attribute__((used)) static void
poll_idle(void)
{
 struct thread *td = curthread;
 struct rtprio rtp;

 rtp.prio = RTP_PRIO_MAX;
 rtp.type = RTP_PRIO_IDLE;
 PROC_SLOCK(td->td_proc);
 rtp_to_pri(&rtp, td);
 PROC_SUNLOCK(td->td_proc);

 for (;;) {
  if (poll_in_idle_loop && poll_handlers > 0) {
   idlepoll_sleeping = 0;
   ether_poll(poll_each_burst);
   thread_lock(td);
   mi_switch(SW_VOL, ((void*)0));
   thread_unlock(td);
  } else {
   idlepoll_sleeping = 1;
   tsleep(&idlepoll_sleeping, 0, "pollid", hz * 3);
  }
 }
}
