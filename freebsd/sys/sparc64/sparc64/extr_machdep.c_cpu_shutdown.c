
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_mp_shutdown () ;
 int ofw_exit (void*) ;

void
cpu_shutdown(void *args)
{




 ofw_exit(args);
}
