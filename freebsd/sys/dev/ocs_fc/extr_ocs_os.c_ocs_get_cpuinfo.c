
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_cpus; } ;
typedef TYPE_1__ ocs_cpuinfo_t ;
typedef int int32_t ;


 int mp_ncpus ;

int32_t
ocs_get_cpuinfo(ocs_cpuinfo_t *cpuinfo)
{
 cpuinfo->num_cpus = mp_ncpus;
 return 0;
}
