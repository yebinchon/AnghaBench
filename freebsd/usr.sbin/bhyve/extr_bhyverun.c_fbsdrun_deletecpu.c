
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int dummy; } ;


 int CPU_CLR_ATOMIC (int,int *) ;
 int CPU_EMPTY (int *) ;
 int CPU_ISSET (int,int *) ;
 int cpumask ;
 int exit (int) ;
 int fprintf (int ,char*,int) ;
 int stderr ;

__attribute__((used)) static int
fbsdrun_deletecpu(struct vmctx *ctx, int vcpu)
{

 if (!CPU_ISSET(vcpu, &cpumask)) {
  fprintf(stderr, "Attempting to delete unknown cpu %d\n", vcpu);
  exit(4);
 }

 CPU_CLR_ATOMIC(vcpu, &cpumask);
 return (CPU_EMPTY(&cpumask));
}
