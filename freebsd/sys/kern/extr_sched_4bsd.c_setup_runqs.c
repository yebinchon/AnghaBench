
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXCPU ;
 int runq ;
 int runq_init (int *) ;
 int * runq_pcpu ;

__attribute__((used)) static void
setup_runqs(void)
{







 runq_init(&runq);
}
