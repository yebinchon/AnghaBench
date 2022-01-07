
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_SETOF (int ,int *) ;
 int MAXCPU ;
 int MIN (int,int ) ;
 int OF_child (int ) ;
 int OF_peer (int ) ;
 int all_cpus ;
 int ap_count ;
 int curcpu ;
 int foreach_ap (int ,int ) ;
 int mp_maxid ;
 int mp_ncpus ;

void
cpu_mp_setmaxid(void)
{

 CPU_SETOF(curcpu, &all_cpus);
 mp_ncpus = 1;

 foreach_ap(OF_child(OF_peer(0)), ap_count);
 mp_ncpus = MIN(mp_ncpus, MAXCPU);
 mp_maxid = mp_ncpus - 1;
}
