
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {int sched_priority; } ;
typedef int p ;
typedef int cpuset_t ;


 int CPU_SET (int,int *) ;
 int CPU_ZERO (int *) ;
 int PRIO_PROCESS ;
 int SCHED_RR ;
 int WWW (char*,int ) ;
 int bzero (struct sched_param*,int) ;
 int errno ;
 int pthread_self () ;
 scalar_t__ pthread_setaffinity_np (int ,int,int *) ;
 scalar_t__ sched_setscheduler (int ,int ,struct sched_param*) ;
 scalar_t__ setpriority (int ,int ,int) ;
 int strerror (int ) ;

__attribute__((used)) static int
setaffinity(int i)
{
        cpuset_t cpumask;
 struct sched_param p;

        if (i == -1)
                return 0;


        CPU_ZERO(&cpumask);
        CPU_SET(i, &cpumask);

        if (pthread_setaffinity_np(pthread_self(), sizeof(cpuset_t), &cpumask) != 0) {
                WWW("Unable to set affinity: %s", strerror(errno));
        }
 if (setpriority(PRIO_PROCESS, 0, -10)) {;
                WWW("Unable to set priority: %s", strerror(errno));
 }
 bzero(&p, sizeof(p));
 p.sched_priority = 10;

 if (sched_setscheduler(0, SCHED_RR, &p)) {
                WWW("Unable to set scheduler: %s", strerror(errno));
 }
        return 0;
}
