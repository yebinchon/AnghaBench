
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lwpid_t ;
typedef int cpuset_t ;


 int CPU_COPY (int ,int *) ;
 int CPU_SET (int,int *) ;
 int CPU_ZERO (int *) ;
 int NOCPU ;
 int _cpuset_setthread (int ,int *,int *) ;
 int cpuset_root ;

int
cpuset_setithread(lwpid_t id, int cpu)
{
 cpuset_t mask;

 CPU_ZERO(&mask);
 if (cpu == NOCPU)
  CPU_COPY(cpuset_root, &mask);
 else
  CPU_SET(cpu, &mask);
 return _cpuset_setthread(id, &mask, ((void*)0));
}
