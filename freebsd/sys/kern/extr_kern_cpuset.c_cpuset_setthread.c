
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lwpid_t ;
typedef int cpuset_t ;


 int _cpuset_setthread (int ,int *,int *) ;

int
cpuset_setthread(lwpid_t id, cpuset_t *mask)
{

 return _cpuset_setthread(id, mask, ((void*)0));
}
