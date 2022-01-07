
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_sec; int member_1; int member_0; } ;
typedef scalar_t__ int32_t ;


 int gettimeofday (struct timeval*,int *) ;

__attribute__((used)) static int32_t
elapsed(int32_t tval)
{
 static struct timeval last = { 0, 0 };
 struct timeval now;

 gettimeofday(&now, ((void*)0));

 if (now.tv_sec - last.tv_sec >= tval) {
  last = now;
  return (1);
 }

 return (0);
}
