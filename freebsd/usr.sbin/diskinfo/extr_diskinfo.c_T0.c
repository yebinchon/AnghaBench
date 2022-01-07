
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int gettimeofday (int *,int *) ;
 int sleep (int) ;
 int stdout ;
 int sync () ;
 int tv1 ;

__attribute__((used)) static void
T0(void)
{

 fflush(stdout);
 sync();
 sleep(1);
 sync();
 sync();
 gettimeofday(&tv1, ((void*)0));
}
