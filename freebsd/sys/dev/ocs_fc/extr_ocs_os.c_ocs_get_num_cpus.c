
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ num_cpus; } ;
typedef TYPE_1__ ocs_cpuinfo_t ;


 int ocs_get_cpuinfo (TYPE_1__*) ;

uint32_t
ocs_get_num_cpus(void)
{
 static ocs_cpuinfo_t cpuinfo;

 if (cpuinfo.num_cpus == 0) {
  ocs_get_cpuinfo(&cpuinfo);
 }
 return cpuinfo.num_cpus;
}
