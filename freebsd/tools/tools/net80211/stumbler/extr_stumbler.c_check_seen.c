
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;
struct node_info {struct node_info* next; scalar_t__ signal; int seen; } ;


 int die (int,char*) ;
 int display_node (struct node_info*) ;
 unsigned long elapsed_ms (struct timeval*,int *) ;
 int gettimeofday (struct timeval*,int *) ;
 struct node_info* nodes ;
 int refresh () ;
 unsigned long sig_reset ;

void check_seen(struct timeval* tv) {
 unsigned long elapsed = 0;
 struct timeval now;
 int need_refresh = 0;
 unsigned long min_wait = 0;
 unsigned long will_wait;

 will_wait = tv->tv_sec*1000+tv->tv_usec/1000;
 min_wait = will_wait;

 struct node_info* node = nodes;

 if (gettimeofday(&now, ((void*)0)) == -1)
  die(1, "gettimeofday()");

 while(node) {
  if (node->signal) {
   elapsed = elapsed_ms(&now, &node->seen);


   if (elapsed >= sig_reset) {
    node->signal = 0;
    display_node(node);
    need_refresh = 1;
   }


   else {
    unsigned long left;

    left = sig_reset - elapsed;
    if (left < min_wait)
     left = min_wait;
   }
  }
  node = node->next;
 }

 if (need_refresh)
  refresh();


 if (min_wait < will_wait) {
  tv->tv_sec = min_wait/1000;
  tv->tv_usec = (min_wait - tv->tv_sec*1000)*1000;
 }
}
