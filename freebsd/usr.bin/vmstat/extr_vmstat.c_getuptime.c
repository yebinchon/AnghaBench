
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {long long tv_nsec; scalar_t__ tv_sec; } ;


 int CLOCK_UPTIME ;
 int clock_gettime (int ,struct timespec*) ;

__attribute__((used)) static long long
getuptime(void)
{
 struct timespec sp;

 (void)clock_gettime(CLOCK_UPTIME, &sp);
 return((long long)sp.tv_sec * 1000000000LL + sp.tv_nsec);
}
