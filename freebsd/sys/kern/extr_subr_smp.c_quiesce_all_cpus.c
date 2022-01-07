
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int all_cpus ;
 int quiesce_cpus (int ,char const*,int) ;

int
quiesce_all_cpus(const char *wmesg, int prio)
{

 return quiesce_cpus(all_cpus, wmesg, prio);
}
