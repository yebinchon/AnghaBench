
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerpc_intr {int priv; int pi_cpuset; int intline; int * pic; } ;


 int CPU_SETOF (int,int *) ;
 int EOPNOTSUPP ;
 int NOCPU ;
 int PIC_BIND (int *,int ,int ,int *) ;
 int all_cpus ;
 int cold ;
 int * root_pic ;

__attribute__((used)) static int
powerpc_assign_intr_cpu(void *arg, int cpu)
{
 return (EOPNOTSUPP);

}
