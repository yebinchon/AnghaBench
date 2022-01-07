
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int cpuset_t ;


 int CPU_SET (int,int *) ;
 int CPU_ZERO (int *) ;
 int D (char*,int ) ;
 int errno ;
 scalar_t__ pthread_setaffinity_np (int ,int,int *) ;
 int strerror (int ) ;

__attribute__((used)) static int
setaffinity(pthread_t me, int i)
{
 cpuset_t cpumask;

 if (i == -1)
  return 0;


 CPU_ZERO(&cpumask);
 CPU_SET(i, &cpumask);

 if (pthread_setaffinity_np(me, sizeof(cpuset_t), &cpumask) != 0) {
  D("Unable to set affinity: %s", strerror(errno));
  return 1;
 }
 return 0;
}
