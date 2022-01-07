
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cancel; } ;


 int D (char*,void*) ;
 int global_nthreads ;
 scalar_t__ pthread_self () ;
 TYPE_1__* targs ;

__attribute__((used)) static void
sigint_h(int sig)
{
 int i;

 (void)sig;
 D("received control-C on thread %p", (void *)pthread_self());
 for (i = 0; i < global_nthreads; i++) {
  targs[i].cancel = 1;
 }
}
