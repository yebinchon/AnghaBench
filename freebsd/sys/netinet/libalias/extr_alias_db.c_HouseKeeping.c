
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; } ;
struct libalias {int timeStamp; int lastCleanupTime; } ;


 int ALIAS_CLEANUP_INTERVAL_SECS ;
 int ALIAS_CLEANUP_MAX_SPOKES ;
 int IncrementalCleanup (struct libalias*) ;
 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 int LINK_TABLE_OUT_SIZE ;
 int fprintf (int ,char*) ;
 int gettimeofday (struct timeval*,int *) ;
 int stderr ;
 int time_uptime ;

void
HouseKeeping(struct libalias *la)
{
 int i, n;

 struct timeval tv;


 LIBALIAS_LOCK_ASSERT(la);
 gettimeofday(&tv, ((void*)0));
 la->timeStamp = tv.tv_sec;



 n = LINK_TABLE_OUT_SIZE * (la->timeStamp - la->lastCleanupTime);
 n /= ALIAS_CLEANUP_INTERVAL_SECS;


 if (n > 0) {
  if (n > ALIAS_CLEANUP_MAX_SPOKES)
   n = ALIAS_CLEANUP_MAX_SPOKES;
  la->lastCleanupTime = la->timeStamp;
  for (i = 0; i < n; i++)
   IncrementalCleanup(la);
 } else if (n < 0) {




  la->lastCleanupTime = la->timeStamp;
 }
}
