
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PVM ;
 scalar_t__ hirunningspace ;
 int msleep (int*,int *,int ,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int rbreqlock ;
 int runningbufreq ;
 scalar_t__ runningbufspace ;

void
waitrunningbufspace(void)
{

 mtx_lock(&rbreqlock);
 while (runningbufspace > hirunningspace) {
  runningbufreq = 1;
  msleep(&runningbufreq, &rbreqlock, PVM, "wdrain", 0);
 }
 mtx_unlock(&rbreqlock);
}
