
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tsockaddr {int sa_family; } ;
struct TYPE_5__ {scalar_t__ tv_usec; int tv_sec; } ;
struct itimerval {TYPE_1__ it_value; TYPE_1__ it_interval; } ;
struct TYPE_7__ {void* id_num; struct tsockaddr addr; } ;
struct TYPE_6__ {int sin_family; } ;
typedef int CTL_RESPONSE ;


 int DELETE ;
 scalar_t__ EINTR ;
 int ITIMER_REAL ;
 int RING_WAIT ;
 int SIGALRM ;
 int accept (int,int ,int ) ;
 int announce_invite () ;
 int close (int) ;
 int ctl_transact (int ,TYPE_3__,int ,int *) ;
 char* current_state ;
 int end_msgs () ;
 scalar_t__ errno ;
 int his_machine_addr ;
 void* htonl (int) ;
 int htons (int ) ;
 int invitation_waiting ;
 int invitebuf ;
 scalar_t__ listen (int,int) ;
 int local_id ;
 int message (char*) ;
 TYPE_3__ msg ;
 TYPE_2__ my_addr ;
 int my_machine_addr ;
 int p_error (char*) ;
 int re_invite ;
 int remote_id ;
 int setitimer (int ,struct itimerval*,struct itimerval*) ;
 int setjmp (int ) ;
 int signal (int ,int ) ;
 int sockt ;
 int start_msgs () ;

void
invite_remote(void)
{
 int new_sockt;
 struct itimerval itimer;
 CTL_RESPONSE response;

 itimer.it_value.tv_sec = RING_WAIT;
 itimer.it_value.tv_usec = 0;
 itimer.it_interval = itimer.it_value;
 if (listen(sockt, 5) != 0)
  p_error("Error on attempt to listen for caller");

 msg.addr = *(struct tsockaddr *)&my_addr;
 msg.addr.sa_family = htons(my_addr.sin_family);
 msg.id_num = htonl(-1);
 invitation_waiting = 1;
 announce_invite();




 end_msgs();
 setitimer(ITIMER_REAL, &itimer, (struct itimerval *)0);
 message("Waiting for your party to respond");
 signal(SIGALRM, re_invite);
 (void) setjmp(invitebuf);
 while ((new_sockt = accept(sockt, 0, 0)) < 0) {
  if (errno == EINTR)
   continue;
  p_error("Unable to connect with your party");
 }
 close(sockt);
 sockt = new_sockt;





 current_state = "Waiting for your party to respond";
 start_msgs();

 msg.id_num = htonl(local_id);
 ctl_transact(my_machine_addr, msg, DELETE, &response);
 msg.id_num = htonl(remote_id);
 ctl_transact(his_machine_addr, msg, DELETE, &response);
 invitation_waiting = 0;
}
