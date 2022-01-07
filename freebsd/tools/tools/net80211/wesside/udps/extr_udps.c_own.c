
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {double tv_sec; } ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;


 int exit (int) ;
 int gettimeofday (struct timeval*,int *) ;
 int nanosleep (struct timespec*,int *) ;
 int perror (char*) ;
 double poll_rate ;
 double pps ;
 int printf (char*,...) ;
 int sendto (int,char*,int,int ,struct sockaddr*,int) ;
 int usleep (int) ;

void own(int s, struct sockaddr_in* s_in) {
 char buf[64];
 int times = 10;
 int i;
 int delay = 10*1000;
 unsigned int sent = 0;
 struct timeval start, end;
 struct timespec ts;
 int dont_sleep_times = 1;
 int dont_sleep;

 delay = (int) ((double)1.0/pps*1000.0*1000.0);

 if (delay <= 5000) {
  dont_sleep_times = 10;




  delay *= dont_sleep_times;

  delay = (int) (0.90*delay);
 }

 dont_sleep = dont_sleep_times;
 times = poll_rate*pps;




 ts.tv_sec = 0;
 ts.tv_nsec = delay*1000;


 if (gettimeofday(&start, ((void*)0)) == -1) {
  perror("gettimeofday()");
  exit(1);
 }

 for(i = 0; i < times; i++) {
  if( sendto(s, buf, 6, 0, (struct sockaddr *)s_in, sizeof(*s_in)) != 6) {
   printf("messed up a bit\n");
   return;
  }
  dont_sleep--;

  if (!dont_sleep) {
   if (nanosleep(&ts, ((void*)0)) == -1) {
    perror("nanosleep()");
    exit(1);
   }

   dont_sleep = dont_sleep_times;
  }


  sent++;
 }

 if (gettimeofday(&end, ((void*)0)) == -1) {
  perror("gettimeofday()");
  exit(1);
 }

 printf ("Sent %.03f p/s\n", ((double)sent)/(((double)end.tv_sec) - start.tv_sec));


}
