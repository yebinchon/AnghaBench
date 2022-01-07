
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_SETOF (scalar_t__,int *) ;
 int KASSERT (int,char*) ;
 scalar_t__ PCPU_GET (int ) ;
 int all_cpus ;
 int cpuid ;
 scalar_t__ mp_maxid ;
 int mp_ncores ;
 int mp_ncpus ;

__attribute__((used)) static void
mp_setvariables_for_up(void *dummy)
{
 mp_ncpus = 1;
 mp_ncores = 1;
 mp_maxid = PCPU_GET(cpuid);
 CPU_SETOF(mp_maxid, &all_cpus);
 KASSERT(PCPU_GET(cpuid) == 0, ("UP must have a CPU ID of zero"));
}
