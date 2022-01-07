
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int rbreqlock ;
 scalar_t__ runningbufreq ;
 int wakeup (scalar_t__*) ;

__attribute__((used)) static void
runningwakeup(void)
{

 mtx_lock(&rbreqlock);
 if (runningbufreq) {
  runningbufreq = 0;
  wakeup(&runningbufreq);
 }
 mtx_unlock(&rbreqlock);
}
