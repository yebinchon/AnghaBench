
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct thread {int dummy; } ;
struct TYPE_5__ {int data; scalar_t__ level_type; int level; } ;
typedef TYPE_1__ cpuctl_cpuid_count_args_t ;
struct TYPE_6__ {int data; int level; } ;
typedef TYPE_2__ cpuctl_cpuid_args_t ;


 int bcopy (int ,int ,int) ;
 int cpuctl_do_cpuid_count (int,TYPE_1__*,struct thread*) ;

__attribute__((used)) static int
cpuctl_do_cpuid(int cpu, cpuctl_cpuid_args_t *data, struct thread *td)
{
 cpuctl_cpuid_count_args_t cdata;
 int error;

 cdata.level = data->level;

 cdata.level_type = 0;
 error = cpuctl_do_cpuid_count(cpu, &cdata, td);
 bcopy(cdata.data, data->data, sizeof(data->data));
 return (error);
}
