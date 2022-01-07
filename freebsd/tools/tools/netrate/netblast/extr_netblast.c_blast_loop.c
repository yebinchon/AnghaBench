
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
typedef int u_int ;
typedef int u_char ;
struct timespec {int tv_nsec; int tv_sec; } ;
struct TYPE_4__ {long tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_3__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct itimerval {TYPE_2__ it_value; TYPE_1__ it_interval; } ;


 int CLOCK_REALTIME ;
 int ITIMER_REAL ;
 int SIGALRM ;
 scalar_t__ SIG_ERR ;
 int be32enc (int *,scalar_t__) ;
 int clock_getres (int ,struct timespec*) ;
 int clock_gettime (int ,struct timespec*) ;
 scalar_t__ global_stop_flag ;
 int perror (char*) ;
 int printf (char*,...) ;
 scalar_t__ send (int,int *,int,int ) ;
 scalar_t__ setitimer (int ,struct itimerval*,int *) ;
 scalar_t__ signal (int ,int ) ;
 int signal_handler ;

__attribute__((used)) static int
blast_loop(int s, long duration, u_char *packet, u_int packet_len)
{
 struct timespec starttime, tmptime;
 struct itimerval it;
 u_int32_t counter;
 int send_errors, send_calls;

 if (signal(SIGALRM, signal_handler) == SIG_ERR) {
  perror("signal");
  return (-1);
 }

 if (clock_getres(CLOCK_REALTIME, &tmptime) == -1) {
  perror("clock_getres");
  return (-1);
 }

 if (clock_gettime(CLOCK_REALTIME, &starttime) == -1) {
  perror("clock_gettime");
  return (-1);
 }

 it.it_interval.tv_sec = 0;
 it.it_interval.tv_usec = 0;
 it.it_value.tv_sec = duration;
 it.it_value.tv_usec = 0;

 if (setitimer(ITIMER_REAL, &it, ((void*)0)) < 0) {
  perror("setitimer");
  return (-1);
 }

 send_errors = send_calls = 0;
 counter = 0;
 while (global_stop_flag == 0) {
  if (packet_len >= 4) {
   be32enc(packet, counter);
   counter++;
  }
  if (send(s, packet, packet_len, 0) < 0)
   send_errors++;
  send_calls++;
 }

 if (clock_gettime(CLOCK_REALTIME, &tmptime) == -1) {
  perror("clock_gettime");
  return (-1);
 }

 printf("\n");
 printf("start:             %zd.%09lu\n", starttime.tv_sec,
     starttime.tv_nsec);
 printf("finish:            %zd.%09lu\n", tmptime.tv_sec,
     tmptime.tv_nsec);
 printf("send calls:        %d\n", send_calls);
 printf("send errors:       %d\n", send_errors);
 printf("approx send rate:  %ld\n", (send_calls - send_errors) /
     duration);
 printf("approx error rate: %d\n", (send_errors / send_calls));

 return (0);
}
