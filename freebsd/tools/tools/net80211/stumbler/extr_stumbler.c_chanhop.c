
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {unsigned long tv_sec; unsigned long tv_usec; } ;
struct TYPE_2__ {int chan; int last_hop; } ;


 TYPE_1__ chaninfo ;
 int die (int,char*) ;
 unsigned long elapsed_ms (struct timeval*,int *) ;
 int gettimeofday (struct timeval*,int *) ;
 unsigned long hopfreq ;
 int set_chan (int) ;

void chanhop(struct timeval* tv) {
 unsigned long elapsed = 0;

 if (gettimeofday(tv, ((void*)0)) == -1)
  die(1, "gettimeofday()");


 elapsed = elapsed_ms(tv, &chaninfo.last_hop);


 if (elapsed >= hopfreq) {
  int c;

  c = chaninfo.chan + 1;

  if (c > 11)
   c = 1;

  set_chan(c);

  elapsed = hopfreq;
 }

 else {
  elapsed = hopfreq - elapsed;
 }


 tv->tv_sec = elapsed/1000;
 tv->tv_usec = (elapsed - tv->tv_sec*1000)*1000;
}
