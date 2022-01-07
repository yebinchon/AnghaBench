
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PRIBIO ;
 int bdirtylock ;
 int bdirtywait ;
 scalar_t__ buf_dirty_count_severe () ;
 int msleep (int*,int *,scalar_t__,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
bwillwrite(void)
{

 if (buf_dirty_count_severe()) {
  mtx_lock(&bdirtylock);
  while (buf_dirty_count_severe()) {
   bdirtywait = 1;
   msleep(&bdirtywait, &bdirtylock, (PRIBIO + 4),
       "flswai", 0);
  }
  mtx_unlock(&bdirtylock);
 }
}
