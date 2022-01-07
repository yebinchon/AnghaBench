
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLOCK_REALTIME ;
 int assert (int) ;
 int clock_gettime (int ,int *) ;
 int ts_end ;

__attribute__((used)) static void
benchmark_stop(void)
{
 int error;

 error = clock_gettime(CLOCK_REALTIME, &ts_end);
 assert(error == 0);
}
