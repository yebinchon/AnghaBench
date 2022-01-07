
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PS_OPT_PERTHREAD ;
 int cmdopt_none (int,char* const*) ;
 int procstat_opts ;

void
cmdopt_cpuset(int argc, char * const argv[])
{

 procstat_opts |= PS_OPT_PERTHREAD;
 cmdopt_none(argc, argv);
}
